; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_ecode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_ecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.qual = type { i64, i64, i64 }

@Q_HOST = common dso_local global i64 0, align 8
@Q_DEFAULT = common dso_local global i64 0, align 8
@Q_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [92 x i8] c"ethernet addresses supported only on ethernet/FDDI/token ring/802.11/ATM LANE/Fibre Channel\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"ethernet address used in non-ether expression\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_ecode(%struct.TYPE_10__* %0, i32* %1, %struct.qual* byval(%struct.qual) align 8 %2) #0 {
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.block*, align 8
  %8 = alloca %struct.block*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  %9 = getelementptr inbounds %struct.qual, %struct.qual* %2, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @Q_HOST, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.qual, %struct.qual* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @Q_DEFAULT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %76

18:                                               ; preds = %13, %3
  %19 = getelementptr inbounds %struct.qual, %struct.qual* %2, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @Q_LINK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %76

23:                                               ; preds = %18
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %72 [
    i32 138, label %27
    i32 131, label %27
    i32 130, label %27
    i32 137, label %44
    i32 136, label %51
    i32 135, label %58
    i32 128, label %58
    i32 133, label %58
    i32 134, label %58
    i32 129, label %58
    i32 132, label %65
  ]

27:                                               ; preds = %23, %23, %23
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = call %struct.block* @gen_prevlinkhdr_check(%struct.TYPE_10__* %28)
  store %struct.block* %29, %struct.block** %8, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds %struct.qual, %struct.qual* %2, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call %struct.block* @gen_ehostop(%struct.TYPE_10__* %30, i32* %31, i32 %34)
  store %struct.block* %35, %struct.block** %7, align 8
  %36 = load %struct.block*, %struct.block** %8, align 8
  %37 = icmp ne %struct.block* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.block*, %struct.block** %8, align 8
  %40 = load %struct.block*, %struct.block** %7, align 8
  %41 = call i32 @gen_and(%struct.block* %39, %struct.block* %40)
  br label %42

42:                                               ; preds = %38, %27
  %43 = load %struct.block*, %struct.block** %7, align 8
  store %struct.block* %43, %struct.block** %4, align 8
  br label %79

44:                                               ; preds = %23
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds %struct.qual, %struct.qual* %2, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call %struct.block* @gen_fhostop(%struct.TYPE_10__* %45, i32* %46, i32 %49)
  store %struct.block* %50, %struct.block** %4, align 8
  br label %79

51:                                               ; preds = %23
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds %struct.qual, %struct.qual* %2, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call %struct.block* @gen_thostop(%struct.TYPE_10__* %52, i32* %53, i32 %56)
  store %struct.block* %57, %struct.block** %4, align 8
  br label %79

58:                                               ; preds = %23, %23, %23, %23, %23
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds %struct.qual, %struct.qual* %2, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call %struct.block* @gen_wlanhostop(%struct.TYPE_10__* %59, i32* %60, i32 %63)
  store %struct.block* %64, %struct.block** %4, align 8
  br label %79

65:                                               ; preds = %23
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds %struct.qual, %struct.qual* %2, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call %struct.block* @gen_ipfchostop(%struct.TYPE_10__* %66, i32* %67, i32 %70)
  store %struct.block* %71, %struct.block** %4, align 8
  br label %79

72:                                               ; preds = %23
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = call i32 @bpf_error(%struct.TYPE_10__* %73, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %75, %18, %13
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = call i32 @bpf_error(%struct.TYPE_10__* %77, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %65, %58, %51, %44, %42
  %80 = load %struct.block*, %struct.block** %4, align 8
  ret %struct.block* %80
}

declare dso_local %struct.block* @gen_prevlinkhdr_check(%struct.TYPE_10__*) #1

declare dso_local %struct.block* @gen_ehostop(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local %struct.block* @gen_fhostop(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local %struct.block* @gen_thostop(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local %struct.block* @gen_wlanhostop(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local %struct.block* @gen_ipfchostop(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @bpf_error(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
