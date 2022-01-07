; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/ipsend/extr_sockraw.c_sendip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/ipsend/extr_sockraw.c_sendip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_header = type { i32 }
%struct.sockaddr_in = type { i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"send\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendip(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ether_header*, align 8
  %9 = alloca %struct.sockaddr_in, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.ether_header*
  store %struct.ether_header* %11, %struct.ether_header** %8, align 8
  %12 = bitcast %struct.sockaddr_in* %9 to i8*
  %13 = call i32 @bzero(i8* %12, i32 8)
  %14 = load i32, i32* @AF_INET, align 4
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 14
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 14
  store i32 %19, i32* %7, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 12
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  %23 = bitcast i32* %22 to i8*
  %24 = call i32 @bcopy(i8* %21, i8* %23, i32 4)
  %25 = load i32, i32* %5, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @sendto(i32 %25, i8* %26, i32 %27, i32 0, %struct.sockaddr_in* %9, i32 8)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr_in*, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
