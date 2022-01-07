; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibstat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibstat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibdiag_opt = type { i8*, i8, i8*, i32*, i32 }

@UMAD_MAX_DEVICES = common dso_local global i32 0, align 4
@UMAD_CA_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"list_of_cas\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"list all IB devices\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"short output\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"port_list\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"show port list\00", align 1
@__const.main.usage_args = private unnamed_addr constant [20 x i8] c"<ca_name> [portnum]\00", align 16
@.str.6 = private unnamed_addr constant [31 x i8] c"-l       # list all IB devices\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"mthca0 2 # stat port 2 of 'mthca0'\00", align 1
@__const.main.usage_examples = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"CDeGKLPsty\00", align 1
@process_opt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"can't init UMAD library\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"can't list IB device names\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"'%s' IB device can't be found\00", align 1
@list_ports = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [17 x i8] c"can't list ports\00", align 1
@list_only = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@short_format = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"stat of IB device '%s' failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x %struct.ibdiag_opt], align 16
  %13 = alloca [20 x i8], align 16
  %14 = alloca [3 x i8*], align 16
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @UMAD_MAX_DEVICES, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* @UMAD_CA_NAME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = mul nuw i64 %17, %19
  %22 = alloca i8, i64 %21, align 16
  store i64 %17, i64* %7, align 8
  store i64 %19, i64* %8, align 8
  store i32 -1, i32* %9, align 4
  %23 = bitcast [4 x %struct.ibdiag_opt]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 160, i1 false)
  %24 = getelementptr inbounds [4 x %struct.ibdiag_opt], [4 x %struct.ibdiag_opt]* %12, i64 0, i64 0
  %25 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %24, i32 0, i32 1
  store i8 108, i8* %26, align 8
  %27 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %24, i32 0, i32 4
  store i32 ptrtoint ([20 x i8]* @.str.1 to i32), i32* %27, align 8
  %28 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %24, i64 1
  %29 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %28, i32 0, i32 1
  store i8 115, i8* %30, align 8
  %31 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %28, i32 0, i32 4
  store i32 ptrtoint ([13 x i8]* @.str.3 to i32), i32* %31, align 8
  %32 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %28, i64 1
  %33 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %33, align 8
  %34 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %32, i32 0, i32 1
  store i8 112, i8* %34, align 8
  %35 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %32, i32 0, i32 4
  store i32 ptrtoint ([15 x i8]* @.str.5 to i32), i32* %35, align 8
  %36 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %32, i64 1
  %37 = bitcast [20 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %37, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.main.usage_args, i32 0, i32 0), i64 20, i1 false)
  %38 = bitcast [3 x i8*]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %38, i8* align 16 bitcast ([3 x i8*]* @__const.main.usage_examples to i8*), i64 24, i1 false)
  %39 = load i32, i32* %4, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds [4 x %struct.ibdiag_opt], [4 x %struct.ibdiag_opt]* %12, i64 0, i64 0
  %42 = load i32, i32* @process_opt, align 4
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %44 = getelementptr inbounds [3 x i8*], [3 x i8*]* %14, i64 0, i64 0
  %45 = call i32 @ibdiag_process_opts(i32 %39, i8** %40, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), %struct.ibdiag_opt* %41, i32 %42, i8* %43, i8** %44)
  %46 = load i64, i64* @optind, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  %51 = load i64, i64* @optind, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 %51
  store i8** %53, i8*** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %2
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strtol(i8* %59, i32 0, i32 0)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %56, %2
  %62 = call i64 (...) @umad_init()
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @IBPANIC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  %67 = bitcast i8* %22 to i8**
  %68 = load i32, i32* @UMAD_MAX_DEVICES, align 4
  %69 = call i32 @umad_get_cas_names(i8** %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 (i8*, ...) @IBPANIC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %127

76:                                               ; preds = %73
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %98, %76
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = mul nsw i64 %83, %19
  %85 = getelementptr inbounds i8, i8* %22, i64 %84
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %90, %19
  %92 = getelementptr inbounds i8, i8* %22, i64 %91
  %93 = trunc i64 %19 to i32
  %94 = call i32 @strncmp(i8* %85, i8* %88, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %81
  br label %101

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %77

101:                                              ; preds = %96, %77
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i8**, i8*** %5, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i8*, ...) @IBPANIC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %105, %101
  %111 = mul nsw i64 0, %19
  %112 = getelementptr inbounds i8, i8* %22, i64 %111
  %113 = load i8**, i8*** %5, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 0
  %115 = load i8*, i8** %114, align 8
  %116 = mul nsw i64 0, %19
  %117 = getelementptr inbounds i8, i8* %22, i64 %116
  %118 = sub i64 %19, 1
  %119 = trunc i64 %118 to i32
  %120 = call i32 @strncpy(i8* %112, i8* %115, i32 %119)
  %121 = mul nsw i64 0, %19
  %122 = getelementptr inbounds i8, i8* %22, i64 %121
  %123 = mul nsw i64 0, %19
  %124 = getelementptr inbounds i8, i8* %22, i64 %123
  %125 = sub i64 %19, 1
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  store i8 0, i8* %126, align 1
  store i32 1, i32* %10, align 4
  br label %127

127:                                              ; preds = %110, %73
  %128 = load i64, i64* @list_ports, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = bitcast i8* %22 to i8**
  %132 = load i32, i32* %10, align 4
  %133 = call i64 @ports_list(i8** %131, i32 %132)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = call i32 (i8*, ...) @IBPANIC(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %130
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %173

138:                                              ; preds = %127
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %169, %138
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %172

143:                                              ; preds = %139
  %144 = load i64, i64* @list_only, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = mul nsw i64 %148, %19
  %150 = getelementptr inbounds i8, i8* %22, i64 %149
  %151 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %150)
  br label %168

152:                                              ; preds = %143
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = mul nsw i64 %154, %19
  %156 = getelementptr inbounds i8, i8* %22, i64 %155
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @short_format, align 4
  %159 = call i64 @ca_stat(i8* %156, i32 %157, i32 %158)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %152
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = mul nsw i64 %163, %19
  %165 = getelementptr inbounds i8, i8* %22, i64 %164
  %166 = call i32 (i8*, ...) @IBPANIC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %161, %152
  br label %168

168:                                              ; preds = %167, %146
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  br label %139

172:                                              ; preds = %139
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %173

173:                                              ; preds = %172, %137
  %174 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ibdiag_process_opts(i32, i8**, i32*, i8*, %struct.ibdiag_opt*, i32, i8*, i8**) #3

declare dso_local i32 @strtol(i8*, i32, i32) #3

declare dso_local i64 @umad_init(...) #3

declare dso_local i32 @IBPANIC(i8*, ...) #3

declare dso_local i32 @umad_get_cas_names(i8**, i32) #3

declare dso_local i32 @strncmp(i8*, i8*, i32) #3

declare dso_local i32 @strncpy(i8*, i8*, i32) #3

declare dso_local i64 @ports_list(i8**, i32) #3

declare dso_local i32 @printf(i8*, i8*) #3

declare dso_local i64 @ca_stat(i8*, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
