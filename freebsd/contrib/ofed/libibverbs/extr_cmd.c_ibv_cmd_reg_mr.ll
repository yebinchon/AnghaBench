; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_reg_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_pd = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_mr = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.ibv_reg_mr = type { i64, i64, i32, i32, i32 }
%struct.ibv_reg_mr_resp = type { i32, i32, i32 }

@REG_MR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_reg_mr(%struct.ibv_pd* %0, i8* %1, i64 %2, i32 %3, i32 %4, %struct.ibv_mr* %5, %struct.ibv_reg_mr* %6, i64 %7, %struct.ibv_reg_mr_resp* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ibv_pd*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ibv_mr*, align 8
  %18 = alloca %struct.ibv_reg_mr*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.ibv_reg_mr_resp*, align 8
  %21 = alloca i64, align 8
  store %struct.ibv_pd* %0, %struct.ibv_pd** %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store %struct.ibv_mr* %5, %struct.ibv_mr** %17, align 8
  store %struct.ibv_reg_mr* %6, %struct.ibv_reg_mr** %18, align 8
  store i64 %7, i64* %19, align 8
  store %struct.ibv_reg_mr_resp* %8, %struct.ibv_reg_mr_resp** %20, align 8
  store i64 %9, i64* %21, align 8
  %22 = load %struct.ibv_reg_mr*, %struct.ibv_reg_mr** %18, align 8
  %23 = load i64, i64* %19, align 8
  %24 = load i32, i32* @REG_MR, align 4
  %25 = load %struct.ibv_reg_mr_resp*, %struct.ibv_reg_mr_resp** %20, align 8
  %26 = load i64, i64* %21, align 8
  %27 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_reg_mr* %22, i64 %23, i32 %24, %struct.ibv_reg_mr_resp* %25, i64 %26)
  %28 = load i8*, i8** %13, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.ibv_reg_mr*, %struct.ibv_reg_mr** %18, align 8
  %31 = getelementptr inbounds %struct.ibv_reg_mr, %struct.ibv_reg_mr* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load %struct.ibv_reg_mr*, %struct.ibv_reg_mr** %18, align 8
  %34 = getelementptr inbounds %struct.ibv_reg_mr, %struct.ibv_reg_mr* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.ibv_reg_mr*, %struct.ibv_reg_mr** %18, align 8
  %37 = getelementptr inbounds %struct.ibv_reg_mr, %struct.ibv_reg_mr* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ibv_pd*, %struct.ibv_pd** %12, align 8
  %39 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ibv_reg_mr*, %struct.ibv_reg_mr** %18, align 8
  %42 = getelementptr inbounds %struct.ibv_reg_mr, %struct.ibv_reg_mr* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load %struct.ibv_reg_mr*, %struct.ibv_reg_mr** %18, align 8
  %45 = getelementptr inbounds %struct.ibv_reg_mr, %struct.ibv_reg_mr* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ibv_pd*, %struct.ibv_pd** %12, align 8
  %47 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ibv_reg_mr*, %struct.ibv_reg_mr** %18, align 8
  %52 = load i64, i64* %19, align 8
  %53 = call i64 @write(i32 %50, %struct.ibv_reg_mr* %51, i64 %52)
  %54 = load i64, i64* %19, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %10
  %57 = load i32, i32* @errno, align 4
  store i32 %57, i32* %11, align 4
  br label %82

58:                                               ; preds = %10
  %59 = load %struct.ibv_reg_mr_resp*, %struct.ibv_reg_mr_resp** %20, align 8
  %60 = load i64, i64* %21, align 8
  %61 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_reg_mr_resp* %59, i64 %60)
  %62 = load %struct.ibv_reg_mr_resp*, %struct.ibv_reg_mr_resp** %20, align 8
  %63 = getelementptr inbounds %struct.ibv_reg_mr_resp, %struct.ibv_reg_mr_resp* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ibv_mr*, %struct.ibv_mr** %17, align 8
  %66 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ibv_reg_mr_resp*, %struct.ibv_reg_mr_resp** %20, align 8
  %68 = getelementptr inbounds %struct.ibv_reg_mr_resp, %struct.ibv_reg_mr_resp* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ibv_mr*, %struct.ibv_mr** %17, align 8
  %71 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ibv_reg_mr_resp*, %struct.ibv_reg_mr_resp** %20, align 8
  %73 = getelementptr inbounds %struct.ibv_reg_mr_resp, %struct.ibv_reg_mr_resp* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ibv_mr*, %struct.ibv_mr** %17, align 8
  %76 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ibv_pd*, %struct.ibv_pd** %12, align 8
  %78 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load %struct.ibv_mr*, %struct.ibv_mr** %17, align 8
  %81 = getelementptr inbounds %struct.ibv_mr, %struct.ibv_mr* %80, i32 0, i32 0
  store %struct.TYPE_2__* %79, %struct.TYPE_2__** %81, align 8
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %58, %56
  %83 = load i32, i32* %11, align 4
  ret i32 %83
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_reg_mr*, i64, i32, %struct.ibv_reg_mr_resp*, i64) #1

declare dso_local i64 @write(i32, %struct.ibv_reg_mr*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_reg_mr_resp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
