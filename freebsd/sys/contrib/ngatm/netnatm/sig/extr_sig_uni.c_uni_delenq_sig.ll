; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_delenq_sig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_delenq_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32 }
%struct.call = type { i32 }
%struct.party = type { i32 }
%struct.uni_msg = type { i32 }
%struct.uni_all = type { i32 }
%struct.sig = type { %struct.uni_all*, %struct.party*, %struct.call*, %struct.uni_msg*, i8*, i8*, i32 }

@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_delenq_sig(%struct.uni* %0, i32 %1, %struct.call* %2, %struct.party* %3, i8* %4, i8* %5, %struct.uni_msg* %6, %struct.uni_all* %7) #0 {
  %9 = alloca %struct.uni*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.call*, align 8
  %12 = alloca %struct.party*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.uni_msg*, align 8
  %16 = alloca %struct.uni_all*, align 8
  %17 = alloca %struct.sig*, align 8
  store %struct.uni* %0, %struct.uni** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.call* %2, %struct.call** %11, align 8
  store %struct.party* %3, %struct.party** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.uni_msg* %6, %struct.uni_msg** %15, align 8
  store %struct.uni_all* %7, %struct.uni_all** %16, align 8
  %18 = call %struct.sig* (...) @SIG_ALLOC()
  store %struct.sig* %18, %struct.sig** %17, align 8
  %19 = icmp ne %struct.sig* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %8
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.sig*, %struct.sig** %17, align 8
  %23 = getelementptr inbounds %struct.sig, %struct.sig* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = load %struct.sig*, %struct.sig** %17, align 8
  %26 = getelementptr inbounds %struct.sig, %struct.sig* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = load %struct.sig*, %struct.sig** %17, align 8
  %29 = getelementptr inbounds %struct.sig, %struct.sig* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.uni_msg*, %struct.uni_msg** %15, align 8
  %31 = load %struct.sig*, %struct.sig** %17, align 8
  %32 = getelementptr inbounds %struct.sig, %struct.sig* %31, i32 0, i32 3
  store %struct.uni_msg* %30, %struct.uni_msg** %32, align 8
  %33 = load %struct.call*, %struct.call** %11, align 8
  %34 = load %struct.sig*, %struct.sig** %17, align 8
  %35 = getelementptr inbounds %struct.sig, %struct.sig* %34, i32 0, i32 2
  store %struct.call* %33, %struct.call** %35, align 8
  %36 = load %struct.party*, %struct.party** %12, align 8
  %37 = load %struct.sig*, %struct.sig** %17, align 8
  %38 = getelementptr inbounds %struct.sig, %struct.sig* %37, i32 0, i32 1
  store %struct.party* %36, %struct.party** %38, align 8
  %39 = load %struct.uni_all*, %struct.uni_all** %16, align 8
  %40 = load %struct.sig*, %struct.sig** %17, align 8
  %41 = getelementptr inbounds %struct.sig, %struct.sig* %40, i32 0, i32 0
  store %struct.uni_all* %39, %struct.uni_all** %41, align 8
  %42 = load %struct.uni*, %struct.uni** %9, align 8
  %43 = getelementptr inbounds %struct.uni, %struct.uni* %42, i32 0, i32 0
  %44 = load %struct.sig*, %struct.sig** %17, align 8
  %45 = load i32, i32* @link, align 4
  %46 = call i32 @TAILQ_INSERT_TAIL(i32* %43, %struct.sig* %44, i32 %45)
  br label %47

47:                                               ; preds = %20, %8
  ret void
}

declare dso_local %struct.sig* @SIG_ALLOC(...) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.sig*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
