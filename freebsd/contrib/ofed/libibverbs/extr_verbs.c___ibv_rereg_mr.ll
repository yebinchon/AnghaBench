; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_rereg_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_rereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_mr = type { i64, i8*, %struct.ibv_pd*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%struct.ibv_pd = type { i32 }

@IBV_REREG_MR_FLAGS_SUPPORTED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IBV_REREG_MR_ERR_INPUT = common dso_local global i32 0, align 4
@IBV_REREG_MR_CHANGE_TRANSLATION = common dso_local global i32 0, align 4
@IBV_REREG_MR_CHANGE_ACCESS = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@IBV_REREG_MR_ERR_DONT_FORK_NEW = common dso_local global i32 0, align 4
@IBV_REREG_MR_CHANGE_PD = common dso_local global i32 0, align 4
@IBV_REREG_MR_ERR_DO_FORK_OLD = common dso_local global i32 0, align 4
@IBV_REREG_MR_ERR_CMD = common dso_local global i32 0, align 4
@IBV_REREG_MR_ERR_CMD_AND_DO_FORK_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ibv_rereg_mr(%struct.ibv_mr* %0, i32 %1, %struct.ibv_pd* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ibv_mr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ibv_pd*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.ibv_mr* %0, %struct.ibv_mr** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.ibv_pd* %2, %struct.ibv_pd** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @IBV_REREG_MR_FLAGS_SUPPORTED, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* @errno, align 4
  %25 = load i32, i32* @IBV_REREG_MR_ERR_INPUT, align 4
  store i32 %25, i32* %7, align 4
  br label %145

26:                                               ; preds = %6
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @IBV_REREG_MR_CHANGE_TRANSLATION, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* @errno, align 4
  %39 = load i32, i32* @IBV_REREG_MR_ERR_INPUT, align 4
  store i32 %39, i32* %7, align 4
  br label %145

40:                                               ; preds = %34, %26
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @IBV_REREG_MR_CHANGE_ACCESS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* @errno, align 4
  %50 = load i32, i32* @IBV_REREG_MR_ERR_INPUT, align 4
  store i32 %50, i32* %7, align 4
  br label %145

51:                                               ; preds = %43, %40
  %52 = load %struct.ibv_mr*, %struct.ibv_mr** %8, align 8
  %53 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = bitcast {}** %56 to i32 (%struct.ibv_mr*, i32, %struct.ibv_pd*, i8*, i64, i32)**
  %58 = load i32 (%struct.ibv_mr*, i32, %struct.ibv_pd*, i8*, i64, i32)*, i32 (%struct.ibv_mr*, i32, %struct.ibv_pd*, i8*, i64, i32)** %57, align 8
  %59 = icmp ne i32 (%struct.ibv_mr*, i32, %struct.ibv_pd*, i8*, i64, i32)* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* @ENOSYS, align 4
  store i32 %61, i32* @errno, align 4
  %62 = load i32, i32* @IBV_REREG_MR_ERR_INPUT, align 4
  store i32 %62, i32* %7, align 4
  br label %145

63:                                               ; preds = %51
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @IBV_REREG_MR_CHANGE_TRANSLATION, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i8*, i8** %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @ibv_dontfork_range(i8* %69, i64 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @IBV_REREG_MR_ERR_DONT_FORK_NEW, align 4
  store i32 %75, i32* %7, align 4
  br label %145

76:                                               ; preds = %68
  store i32 1, i32* %14, align 4
  br label %77

77:                                               ; preds = %76, %63
  %78 = load %struct.ibv_mr*, %struct.ibv_mr** %8, align 8
  %79 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %16, align 8
  %81 = load %struct.ibv_mr*, %struct.ibv_mr** %8, align 8
  %82 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %17, align 8
  %84 = load %struct.ibv_mr*, %struct.ibv_mr** %8, align 8
  %85 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = bitcast {}** %88 to i32 (%struct.ibv_mr*, i32, %struct.ibv_pd*, i8*, i64, i32)**
  %90 = load i32 (%struct.ibv_mr*, i32, %struct.ibv_pd*, i8*, i64, i32)*, i32 (%struct.ibv_mr*, i32, %struct.ibv_pd*, i8*, i64, i32)** %89, align 8
  %91 = load %struct.ibv_mr*, %struct.ibv_mr** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.ibv_pd*, %struct.ibv_pd** %10, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 %90(%struct.ibv_mr* %91, i32 %92, %struct.ibv_pd* %93, i8* %94, i64 %95, i32 %96)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %130, label %100

100:                                              ; preds = %77
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @IBV_REREG_MR_CHANGE_PD, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.ibv_pd*, %struct.ibv_pd** %10, align 8
  %107 = load %struct.ibv_mr*, %struct.ibv_mr** %8, align 8
  %108 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %107, i32 0, i32 2
  store %struct.ibv_pd* %106, %struct.ibv_pd** %108, align 8
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @IBV_REREG_MR_CHANGE_TRANSLATION, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %109
  %115 = load i8*, i8** %11, align 8
  %116 = load %struct.ibv_mr*, %struct.ibv_mr** %8, align 8
  %117 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load %struct.ibv_mr*, %struct.ibv_mr** %8, align 8
  %120 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = load i64, i64* %17, align 8
  %123 = call i32 @ibv_dofork_range(i8* %121, i64 %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %114
  %127 = load i32, i32* @IBV_REREG_MR_ERR_DO_FORK_OLD, align 4
  store i32 %127, i32* %7, align 4
  br label %145

128:                                              ; preds = %114
  br label %129

129:                                              ; preds = %128, %109
  br label %143

130:                                              ; preds = %77
  %131 = load i32, i32* @IBV_REREG_MR_ERR_CMD, align 4
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = load i8*, i8** %11, align 8
  %136 = load i64, i64* %12, align 8
  %137 = call i32 @ibv_dofork_range(i8* %135, i64 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* @IBV_REREG_MR_ERR_CMD_AND_DO_FORK_NEW, align 4
  store i32 %140, i32* %15, align 4
  br label %141

141:                                              ; preds = %139, %134
  br label %142

142:                                              ; preds = %141, %130
  br label %143

143:                                              ; preds = %142, %129
  %144 = load i32, i32* %15, align 4
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %143, %126, %74, %60, %48, %37, %23
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i32 @ibv_dontfork_range(i8*, i64) #1

declare dso_local i32 @ibv_dofork_range(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
