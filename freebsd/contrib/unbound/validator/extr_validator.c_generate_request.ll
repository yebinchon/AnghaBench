; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_generate_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_generate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32*, i32, i32, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i32 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32, %struct.module_qstate**)*, i32 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32, %struct.module_qstate**, %struct.mesh_state**)*, i64 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32)* }
%struct.query_info = type { i64, i32*, i64, i64, i32* }
%struct.mesh_state = type { i32 }
%struct.val_qstate = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"generate request\00", align 1
@LDNS_RR_TYPE_DLV = common dso_local global i64 0, align 8
@BIT_RD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Could not generate request: cycle detected\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Could not generate request: out of memory\00", align 1
@module_wait_subquery = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, i32, i32*, i64, i64, i64, i64, %struct.module_qstate**, i32)* @generate_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_request(%struct.module_qstate* %0, i32 %1, i32* %2, i64 %3, i64 %4, i64 %5, i64 %6, %struct.module_qstate** %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.module_qstate*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.module_qstate**, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.val_qstate*, align 8
  %21 = alloca %struct.query_info, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.mesh_state*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store %struct.module_qstate** %7, %struct.module_qstate*** %18, align 8
  store i32 %8, i32* %19, align 4
  %24 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %25 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %24, i32 0, i32 4
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.val_qstate*
  store %struct.val_qstate* %31, %struct.val_qstate** %20, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 4
  store i32* %32, i32** %33, align 8
  %34 = load i64, i64* %14, align 8
  %35 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load i64, i64* %15, align 8
  %37 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 3
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* %16, align 8
  %39 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 2
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.query_info, %struct.query_info* %21, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @VERB_ALGO, align 4
  %42 = call i32 @log_query_info(i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.query_info* %21)
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* @LDNS_RR_TYPE_DLV, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %9
  store i32 0, i32* %22, align 4
  br label %48

47:                                               ; preds = %9
  store i32 1, i32* %22, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %50 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i64 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32)*, i64 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32)** %52, align 8
  %54 = call i32 @fptr_whitelist_modenv_detect_cycle(i64 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32)* %53)
  %55 = call i32 @fptr_ok(i32 %54)
  %56 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %57 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32)*, i64 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32)** %59, align 8
  %61 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %62 = load i64, i64* @BIT_RD, align 8
  %63 = load i64, i64* %17, align 8
  %64 = or i64 %62, %63
  %65 = load i32, i32* %22, align 4
  %66 = call i64 %60(%struct.module_qstate* %61, %struct.query_info* %21, i64 %64, i32 0, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %48
  %69 = load i32, i32* @VERB_ALGO, align 4
  %70 = call i32 @verbose(i32 %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %146

71:                                               ; preds = %48
  %72 = load i32, i32* %19, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  store %struct.mesh_state* null, %struct.mesh_state** %23, align 8
  %75 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %76 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32, %struct.module_qstate**, %struct.mesh_state**)*, i32 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32, %struct.module_qstate**, %struct.mesh_state**)** %78, align 8
  %80 = call i32 @fptr_whitelist_modenv_add_sub(i32 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32, %struct.module_qstate**, %struct.mesh_state**)* %79)
  %81 = call i32 @fptr_ok(i32 %80)
  %82 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %83 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32, %struct.module_qstate**, %struct.mesh_state**)*, i32 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32, %struct.module_qstate**, %struct.mesh_state**)** %85, align 8
  %87 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %88 = load i64, i64* @BIT_RD, align 8
  %89 = load i64, i64* %17, align 8
  %90 = or i64 %88, %89
  %91 = load i32, i32* %22, align 4
  %92 = load %struct.module_qstate**, %struct.module_qstate*** %18, align 8
  %93 = call i32 %86(%struct.module_qstate* %87, %struct.query_info* %21, i64 %90, i32 0, i32 %91, %struct.module_qstate** %92, %struct.mesh_state** %23)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %74
  %96 = call i32 @log_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %146

97:                                               ; preds = %74
  br label %122

98:                                               ; preds = %71
  %99 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %100 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32, %struct.module_qstate**)*, i32 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32, %struct.module_qstate**)** %102, align 8
  %104 = call i32 @fptr_whitelist_modenv_attach_sub(i32 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32, %struct.module_qstate**)* %103)
  %105 = call i32 @fptr_ok(i32 %104)
  %106 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %107 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %106, i32 0, i32 3
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32, %struct.module_qstate**)*, i32 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32, %struct.module_qstate**)** %109, align 8
  %111 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %112 = load i64, i64* @BIT_RD, align 8
  %113 = load i64, i64* %17, align 8
  %114 = or i64 %112, %113
  %115 = load i32, i32* %22, align 4
  %116 = load %struct.module_qstate**, %struct.module_qstate*** %18, align 8
  %117 = call i32 %110(%struct.module_qstate* %111, %struct.query_info* %21, i64 %114, i32 0, i32 %115, %struct.module_qstate** %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %98
  %120 = call i32 @log_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %146

121:                                              ; preds = %98
  br label %122

122:                                              ; preds = %121, %97
  %123 = load %struct.module_qstate**, %struct.module_qstate*** %18, align 8
  %124 = load %struct.module_qstate*, %struct.module_qstate** %123, align 8
  %125 = icmp ne %struct.module_qstate* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load %struct.module_qstate**, %struct.module_qstate*** %18, align 8
  %128 = load %struct.module_qstate*, %struct.module_qstate** %127, align 8
  %129 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %128, i32 0, i32 2
  %130 = load %struct.module_qstate**, %struct.module_qstate*** %18, align 8
  %131 = load %struct.module_qstate*, %struct.module_qstate** %130, align 8
  %132 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.val_qstate*, %struct.val_qstate** %20, align 8
  %135 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @sock_list_merge(i32* %129, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %126, %122
  %139 = load i32, i32* @module_wait_subquery, align 4
  %140 = load %struct.module_qstate*, %struct.module_qstate** %11, align 8
  %141 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %139, i32* %145, align 4
  store i32 1, i32* %10, align 4
  br label %146

146:                                              ; preds = %138, %119, %95, %68
  %147 = load i32, i32* %10, align 4
  ret i32 %147
}

declare dso_local i32 @log_query_info(i32, i8*, %struct.query_info*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_modenv_detect_cycle(i64 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32)*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @fptr_whitelist_modenv_add_sub(i32 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32, %struct.module_qstate**, %struct.mesh_state**)*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @fptr_whitelist_modenv_attach_sub(i32 (%struct.module_qstate*, %struct.query_info*, i64, i32, i32, %struct.module_qstate**)*) #1

declare dso_local i32 @sock_list_merge(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
