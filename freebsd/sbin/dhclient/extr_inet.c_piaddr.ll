; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_inet.c_piaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_inet.c_piaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iaddr = type { i64, i32 }
%struct.in_addr = type { i32 }

@piaddr.pbuf = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"<null address>\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"<invalid address>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @piaddr(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.iaddr, align 8
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca i8*, align 8
  %6 = bitcast %struct.iaddr* %3 to { i64, i32 }*
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %1, i32* %8, align 8
  %9 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %3, i32 0, i32 1
  %10 = call i32 @memcpy(%struct.in_addr* %4, i32* %9, i32 4)
  %11 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %3, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @strlcpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @piaddr.pbuf, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 32)
  br label %28

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @inet_ntoa(i32 %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strlcpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @piaddr.pbuf, i64 0, i64 0), i8* %23, i32 32)
  br label %27

25:                                               ; preds = %16
  %26 = call i32 @strlcpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @piaddr.pbuf, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 32)
  br label %27

27:                                               ; preds = %25, %22
  br label %28

28:                                               ; preds = %27, %14
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @piaddr.pbuf, i64 0, i64 0)
}

declare dso_local i32 @memcpy(%struct.in_addr*, i32*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
