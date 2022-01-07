; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_create_rwq_ind_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_create_rwq_ind_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_rwq_ind_table_init_attr = type { i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_rwq_ind_table = type { %struct.ibv_context*, i32, i32 }
%struct.ibv_create_rwq_ind_table = type { i32, i64 }
%struct.ibv_create_rwq_ind_table_resp = type { i64, i32, i32 }

@IBV_CREATE_IND_TABLE_RESERVED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CREATE_RWQ_IND_TBL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_create_rwq_ind_table(%struct.ibv_context* %0, %struct.ibv_rwq_ind_table_init_attr* %1, %struct.ibv_rwq_ind_table* %2, %struct.ibv_create_rwq_ind_table* %3, i64 %4, i64 %5, %struct.ibv_create_rwq_ind_table_resp* %6, i64 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.ibv_context*, align 8
  %12 = alloca %struct.ibv_rwq_ind_table_init_attr*, align 8
  %13 = alloca %struct.ibv_rwq_ind_table*, align 8
  %14 = alloca %struct.ibv_create_rwq_ind_table*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ibv_create_rwq_ind_table_resp*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %11, align 8
  store %struct.ibv_rwq_ind_table_init_attr* %1, %struct.ibv_rwq_ind_table_init_attr** %12, align 8
  store %struct.ibv_rwq_ind_table* %2, %struct.ibv_rwq_ind_table** %13, align 8
  store %struct.ibv_create_rwq_ind_table* %3, %struct.ibv_create_rwq_ind_table** %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store %struct.ibv_create_rwq_ind_table_resp* %6, %struct.ibv_create_rwq_ind_table_resp** %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  %26 = load %struct.ibv_rwq_ind_table_init_attr*, %struct.ibv_rwq_ind_table_init_attr** %12, align 8
  %27 = getelementptr inbounds %struct.ibv_rwq_ind_table_init_attr, %struct.ibv_rwq_ind_table_init_attr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IBV_CREATE_IND_TABLE_RESERVED, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %9
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %10, align 4
  br label %136

33:                                               ; preds = %9
  %34 = load i64, i64* %15, align 8
  %35 = sub i64 %34, 16
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %23, align 4
  %37 = load %struct.ibv_rwq_ind_table_init_attr*, %struct.ibv_rwq_ind_table_init_attr** %12, align 8
  %38 = getelementptr inbounds %struct.ibv_rwq_ind_table_init_attr, %struct.ibv_rwq_ind_table_init_attr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 1, %39
  store i32 %40, i32* %25, align 4
  %41 = load i32, i32* %25, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = icmp ult i64 %43, 4
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %50

46:                                               ; preds = %33
  %47 = load i32, i32* %25, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  br label %50

50:                                               ; preds = %46, %45
  %51 = phi i64 [ 4, %45 ], [ %49, %46 ]
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %23, align 4
  %54 = load i32, i32* %22, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %10, align 4
  br label %136

58:                                               ; preds = %50
  %59 = load %struct.ibv_create_rwq_ind_table*, %struct.ibv_create_rwq_ind_table** %14, align 8
  %60 = bitcast %struct.ibv_create_rwq_ind_table* %59 to i32*
  %61 = getelementptr inbounds i32, i32* %60, i64 16
  store i32* %61, i32** %24, align 8
  store i32 0, i32* %21, align 4
  br label %62

62:                                               ; preds = %80, %58
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %25, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = load %struct.ibv_rwq_ind_table_init_attr*, %struct.ibv_rwq_ind_table_init_attr** %12, align 8
  %68 = getelementptr inbounds %struct.ibv_rwq_ind_table_init_attr, %struct.ibv_rwq_ind_table_init_attr* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %68, align 8
  %70 = load i32, i32* %21, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 %71
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %24, align 8
  %77 = load i32, i32* %21, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %66
  %81 = load i32, i32* %21, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %21, align 4
  br label %62

83:                                               ; preds = %62
  %84 = load %struct.ibv_create_rwq_ind_table*, %struct.ibv_create_rwq_ind_table** %14, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %16, align 8
  %87 = load i32, i32* @CREATE_RWQ_IND_TBL, align 4
  %88 = load %struct.ibv_create_rwq_ind_table_resp*, %struct.ibv_create_rwq_ind_table_resp** %17, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %19, align 8
  %91 = call i32 @IBV_INIT_CMD_RESP_EX_V(%struct.ibv_create_rwq_ind_table* %84, i64 %85, i64 %86, i32 %87, %struct.ibv_create_rwq_ind_table_resp* %88, i64 %89, i64 %90)
  %92 = load %struct.ibv_rwq_ind_table_init_attr*, %struct.ibv_rwq_ind_table_init_attr** %12, align 8
  %93 = getelementptr inbounds %struct.ibv_rwq_ind_table_init_attr, %struct.ibv_rwq_ind_table_init_attr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ibv_create_rwq_ind_table*, %struct.ibv_create_rwq_ind_table** %14, align 8
  %96 = getelementptr inbounds %struct.ibv_create_rwq_ind_table, %struct.ibv_create_rwq_ind_table* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.ibv_create_rwq_ind_table*, %struct.ibv_create_rwq_ind_table** %14, align 8
  %98 = getelementptr inbounds %struct.ibv_create_rwq_ind_table, %struct.ibv_create_rwq_ind_table* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.ibv_context*, %struct.ibv_context** %11, align 8
  %100 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ibv_create_rwq_ind_table*, %struct.ibv_create_rwq_ind_table** %14, align 8
  %103 = load i64, i64* %16, align 8
  %104 = call i32 @write(i32 %101, %struct.ibv_create_rwq_ind_table* %102, i64 %103)
  store i32 %104, i32* %20, align 4
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %16, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %83
  %110 = load i32, i32* @errno, align 4
  store i32 %110, i32* %10, align 4
  br label %136

111:                                              ; preds = %83
  %112 = load %struct.ibv_create_rwq_ind_table_resp*, %struct.ibv_create_rwq_ind_table_resp** %17, align 8
  %113 = load i64, i64* %19, align 8
  %114 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_rwq_ind_table_resp* %112, i64 %113)
  %115 = load %struct.ibv_create_rwq_ind_table_resp*, %struct.ibv_create_rwq_ind_table_resp** %17, align 8
  %116 = getelementptr inbounds %struct.ibv_create_rwq_ind_table_resp, %struct.ibv_create_rwq_ind_table_resp* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %18, align 8
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i32, i32* @EINVAL, align 4
  store i32 %121, i32* %10, align 4
  br label %136

122:                                              ; preds = %111
  %123 = load %struct.ibv_create_rwq_ind_table_resp*, %struct.ibv_create_rwq_ind_table_resp** %17, align 8
  %124 = getelementptr inbounds %struct.ibv_create_rwq_ind_table_resp, %struct.ibv_create_rwq_ind_table_resp* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ibv_rwq_ind_table*, %struct.ibv_rwq_ind_table** %13, align 8
  %127 = getelementptr inbounds %struct.ibv_rwq_ind_table, %struct.ibv_rwq_ind_table* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load %struct.ibv_create_rwq_ind_table_resp*, %struct.ibv_create_rwq_ind_table_resp** %17, align 8
  %129 = getelementptr inbounds %struct.ibv_create_rwq_ind_table_resp, %struct.ibv_create_rwq_ind_table_resp* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ibv_rwq_ind_table*, %struct.ibv_rwq_ind_table** %13, align 8
  %132 = getelementptr inbounds %struct.ibv_rwq_ind_table, %struct.ibv_rwq_ind_table* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  %133 = load %struct.ibv_context*, %struct.ibv_context** %11, align 8
  %134 = load %struct.ibv_rwq_ind_table*, %struct.ibv_rwq_ind_table** %13, align 8
  %135 = getelementptr inbounds %struct.ibv_rwq_ind_table, %struct.ibv_rwq_ind_table* %134, i32 0, i32 0
  store %struct.ibv_context* %133, %struct.ibv_context** %135, align 8
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %122, %120, %109, %56, %31
  %137 = load i32, i32* %10, align 4
  ret i32 %137
}

declare dso_local i32 @IBV_INIT_CMD_RESP_EX_V(%struct.ibv_create_rwq_ind_table*, i64, i64, i32, %struct.ibv_create_rwq_ind_table_resp*, i64, i64) #1

declare dso_local i32 @write(i32, %struct.ibv_create_rwq_ind_table*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_rwq_ind_table_resp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
