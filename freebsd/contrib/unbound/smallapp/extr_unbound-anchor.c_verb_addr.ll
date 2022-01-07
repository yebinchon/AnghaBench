; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_verb_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_verb_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_list = type { i64, i32 }
%struct.sockaddr_in = type { i64, i32 }
%struct.sockaddr_in6 = type { i32 }

@verb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"%s (inet_ntop error)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ip_list*)* @verb_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verb_addr(i8* %0, %struct.ip_list* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ip_list*, align 8
  %5 = alloca [100 x i8], align 16
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ip_list* %1, %struct.ip_list** %4, align 8
  %7 = load i64, i64* @verb, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = load %struct.ip_list*, %struct.ip_list** %4, align 8
  %11 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %10, i32 0, i32 1
  %12 = bitcast i32* %11 to %struct.sockaddr_in*
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 1
  %14 = bitcast i32* %13 to i8*
  store i8* %14, i8** %6, align 8
  %15 = load %struct.ip_list*, %struct.ip_list** %4, align 8
  %16 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 16
  br i1 %18, label %19, label %25

19:                                               ; preds = %9
  %20 = load %struct.ip_list*, %struct.ip_list** %4, align 8
  %21 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %20, i32 0, i32 1
  %22 = bitcast i32* %21 to %struct.sockaddr_in6*
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to i8*
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %19, %9
  %26 = load %struct.ip_list*, %struct.ip_list** %4, align 8
  %27 = getelementptr inbounds %struct.ip_list, %struct.ip_list* %26, i32 0, i32 1
  %28 = bitcast i32* %27 to %struct.sockaddr_in*
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %34 = call i64 @inet_ntop(i32 %31, i8* %32, i8* %33, i64 100)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %43

39:                                               ; preds = %25
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %42 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %36
  br label %44

44:                                               ; preds = %43, %2
  ret void
}

declare dso_local i64 @inet_ntop(i32, i8*, i8*, i64) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
