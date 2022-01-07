; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pfsync.c_print_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pfsync.c_print_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_addr = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".%hu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.pf_addr*, i64, i32, i8*)* @print_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_host(i32* %0, %struct.pf_addr* %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pf_addr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [48 x i8], align 16
  store i32* %0, i32** %6, align 8
  store %struct.pf_addr* %1, %struct.pf_addr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.pf_addr*, %struct.pf_addr** %7, align 8
  %14 = getelementptr inbounds [48 x i8], [48 x i8]* %11, i64 0, i64 0
  %15 = call i32* @inet_ntop(i32 %12, %struct.pf_addr* %13, i8* %14, i32 48)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str to i32*))
  br label %25

20:                                               ; preds = %5
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds [48 x i8], [48 x i8]* %11, i64 0, i64 0
  %23 = bitcast i8* %22 to i32*
  %24 = call i32 @ND_PRINT(i32* %23)
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @ntohs(i64 %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @ND_PRINT(i32* %33)
  br label %35

35:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32* @inet_ntop(i32, %struct.pf_addr*, i8*, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
