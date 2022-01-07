; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_process_ds_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_process_ds_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32*, i32 }
%struct.val_qstate = type { i64, i8*, %struct.key_entry_key*, i32*, i32*, i32, i32 }
%struct.key_entry_key = type { i32 }
%struct.dns_msg = type { i32 }
%struct.query_info = type { i32, i32 }
%struct.sock_list = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"malloc failure in process_ds_response\00", align 1
@VAL_VALIDATE_STATE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"malloc failure in empty_DS_name\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"malloc failure in process DS\00", align 1
@VAL_MAX_RESTART_COUNT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"for DS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, %struct.val_qstate*, i32, i32, %struct.dns_msg*, %struct.query_info*, %struct.sock_list*)* @process_ds_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_ds_response(%struct.module_qstate* %0, %struct.val_qstate* %1, i32 %2, i32 %3, %struct.dns_msg* %4, %struct.query_info* %5, %struct.sock_list* %6) #0 {
  %8 = alloca %struct.module_qstate*, align 8
  %9 = alloca %struct.val_qstate*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dns_msg*, align 8
  %13 = alloca %struct.query_info*, align 8
  %14 = alloca %struct.sock_list*, align 8
  %15 = alloca %struct.key_entry_key*, align 8
  %16 = alloca i32*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %8, align 8
  store %struct.val_qstate* %1, %struct.val_qstate** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.dns_msg* %4, %struct.dns_msg** %12, align 8
  store %struct.query_info* %5, %struct.query_info** %13, align 8
  store %struct.sock_list* %6, %struct.sock_list** %14, align 8
  store %struct.key_entry_key* null, %struct.key_entry_key** %15, align 8
  %17 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %18 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %16, align 8
  %20 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %21 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %23 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %27 = load %struct.query_info*, %struct.query_info** %13, align 8
  %28 = call i32 @ds_response_to_ke(%struct.module_qstate* %22, %struct.val_qstate* %23, i32 %24, i32 %25, %struct.dns_msg* %26, %struct.query_info* %27, %struct.key_entry_key** %15)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %7
  %31 = call i32 @log_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %33 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %32, i32 0, i32 2
  store %struct.key_entry_key* null, %struct.key_entry_key** %33, align 8
  %34 = load i8*, i8** @VAL_VALIDATE_STATE, align 8
  %35 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %36 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  br label %147

37:                                               ; preds = %7
  %38 = load %struct.key_entry_key*, %struct.key_entry_key** %15, align 8
  %39 = icmp eq %struct.key_entry_key* %38, null
  br i1 %39, label %40, label %72

40:                                               ; preds = %37
  %41 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %42 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.query_info*, %struct.query_info** %13, align 8
  %45 = getelementptr inbounds %struct.query_info, %struct.query_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.query_info*, %struct.query_info** %13, align 8
  %48 = getelementptr inbounds %struct.query_info, %struct.query_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @regional_alloc_init(i32 %43, i32 %46, i32 %49)
  %51 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %52 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %51, i32 0, i32 4
  store i32* %50, i32** %52, align 8
  %53 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %54 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %40
  %58 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %60 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %59, i32 0, i32 2
  store %struct.key_entry_key* null, %struct.key_entry_key** %60, align 8
  %61 = load i8*, i8** @VAL_VALIDATE_STATE, align 8
  %62 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %63 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  br label %147

64:                                               ; preds = %40
  %65 = load %struct.query_info*, %struct.query_info** %13, align 8
  %66 = getelementptr inbounds %struct.query_info, %struct.query_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %69 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 4
  %70 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %71 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %70, i32 0, i32 3
  store i32* null, i32** %71, align 8
  br label %147

72:                                               ; preds = %37
  %73 = load %struct.key_entry_key*, %struct.key_entry_key** %15, align 8
  %74 = call i64 @key_entry_isgood(%struct.key_entry_key* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %72
  %77 = load %struct.key_entry_key*, %struct.key_entry_key** %15, align 8
  %78 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %79 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @key_entry_get_rrset(%struct.key_entry_key* %77, i32 %80)
  %82 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %83 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %85 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %76
  %89 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %91 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %90, i32 0, i32 2
  store %struct.key_entry_key* null, %struct.key_entry_key** %91, align 8
  %92 = load i8*, i8** @VAL_VALIDATE_STATE, align 8
  %93 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %94 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  br label %147

95:                                               ; preds = %76
  %96 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %97 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %96, i32 0, i32 3
  store i32* null, i32** %97, align 8
  br label %146

98:                                               ; preds = %72
  %99 = load %struct.key_entry_key*, %struct.key_entry_key** %15, align 8
  %100 = call i64 @key_entry_isbad(%struct.key_entry_key* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %98
  %103 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %104 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @VAL_MAX_RESTART_COUNT, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %102
  %109 = load i32*, i32** %16, align 8
  %110 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %111 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %110, i32 0, i32 4
  store i32* %109, i32** %111, align 8
  %112 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %113 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %112, i32 0, i32 3
  %114 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %115 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.sock_list*, %struct.sock_list** %14, align 8
  %118 = call i32 @val_blacklist(i32** %113, i32 %116, %struct.sock_list* %117, i32 1)
  %119 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %120 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %119, i32 0, i32 0
  store i32* null, i32** %120, align 8
  %121 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %122 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  br label %145

125:                                              ; preds = %102, %98
  %126 = load %struct.key_entry_key*, %struct.key_entry_key** %15, align 8
  %127 = call i64 @key_entry_isbad(%struct.key_entry_key* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %131 = load %struct.sock_list*, %struct.sock_list** %14, align 8
  %132 = call i32 @errinf_origin(%struct.module_qstate* %130, %struct.sock_list* %131)
  %133 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %134 = load %struct.query_info*, %struct.query_info** %13, align 8
  %135 = getelementptr inbounds %struct.query_info, %struct.query_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @errinf_dname(%struct.module_qstate* %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %129, %125
  %139 = load %struct.key_entry_key*, %struct.key_entry_key** %15, align 8
  %140 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %141 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %140, i32 0, i32 2
  store %struct.key_entry_key* %139, %struct.key_entry_key** %141, align 8
  %142 = load i8*, i8** @VAL_VALIDATE_STATE, align 8
  %143 = load %struct.val_qstate*, %struct.val_qstate** %9, align 8
  %144 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %138, %108
  br label %146

146:                                              ; preds = %145, %95
  br label %147

147:                                              ; preds = %30, %57, %88, %146, %64
  ret void
}

declare dso_local i32 @ds_response_to_ke(%struct.module_qstate*, %struct.val_qstate*, i32, i32, %struct.dns_msg*, %struct.query_info*, %struct.key_entry_key**) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32* @regional_alloc_init(i32, i32, i32) #1

declare dso_local i64 @key_entry_isgood(%struct.key_entry_key*) #1

declare dso_local i32 @key_entry_get_rrset(%struct.key_entry_key*, i32) #1

declare dso_local i64 @key_entry_isbad(%struct.key_entry_key*) #1

declare dso_local i32 @val_blacklist(i32**, i32, %struct.sock_list*, i32) #1

declare dso_local i32 @errinf_origin(%struct.module_qstate*, %struct.sock_list*) #1

declare dso_local i32 @errinf_dname(%struct.module_qstate*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
