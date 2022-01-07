; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_connect_to_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_connect_to_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_list = type { i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"connect to\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_list*)* @connect_to_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_to_ip(%struct.ip_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_list*, align 8
  %4 = alloca i32, align 4
  store %struct.ip_list* %0, %struct.ip_list** %3, align 8
  %5 = load %struct.ip_list*, %struct.ip_list** %3, align 8
  %6 = call i32 @verb_addr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.ip_list* %5)
  %7 = load %struct.ip_list*, %struct.ip_list** %3, align 8
  %8 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @AF_INET, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @AF_INET6, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = load i32, i32* @SOCK_STREAM, align 4
  %18 = call i32 @socket(i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @print_sock_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %39

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.ip_list*, %struct.ip_list** %3, align 8
  %26 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %25, i32 0, i32 1
  %27 = bitcast i32* %26 to %struct.sockaddr*
  %28 = load %struct.ip_list*, %struct.ip_list** %3, align 8
  %29 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @connect(i32 %24, %struct.sockaddr* %27, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = call i32 @print_sock_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @fd_close(i32 %35)
  store i32 -1, i32* %2, align 4
  br label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %33, %21
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @verb_addr(i8*, %struct.ip_list*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @print_sock_err(i8*) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @fd_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
