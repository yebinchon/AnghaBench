; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_load_pac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_load_pac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_pac = type { i32 }
%struct.eap_fast_read_ctx = type { i8*, i32 }

@pac_file_hdr = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Unrecognized header line\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Unexpected line outside START/END block\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"PAC-Type\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"PAC-Key\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"PAC-Opaque\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"A-ID\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"I-ID\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"A-ID-Info\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"PAC block not terminated with END\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"EAP-FAST: %s in '%s:%d'\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [40 x i8] c"EAP-FAST: Read %d PAC entries from '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_fast_load_pac(%struct.eap_sm* %0, %struct.eap_fast_pac** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_fast_pac**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_fast_read_ctx, align 8
  %9 = alloca %struct.eap_fast_pac*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_fast_pac** %1, %struct.eap_fast_pac*** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.eap_fast_pac* null, %struct.eap_fast_pac** %9, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %153

16:                                               ; preds = %3
  %17 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @eap_fast_init_pac_data(%struct.eap_sm* %17, i8* %18, %struct.eap_fast_read_ctx* %8)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %153

22:                                               ; preds = %16
  %23 = call i64 @eap_fast_read_line(%struct.eap_fast_read_ctx* %8, i8** %11)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @eap_fast_deinit_pac_data(%struct.eap_fast_read_ctx* %8)
  store i32 0, i32* %4, align 4
  br label %153

27:                                               ; preds = %22
  %28 = load i8*, i8** @pac_file_hdr, align 8
  %29 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %8, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @os_strcmp(i8* %28, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %34

34:                                               ; preds = %33, %27
  br label %35

35:                                               ; preds = %126, %34
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = call i64 @eap_fast_read_line(%struct.eap_fast_read_ctx* %8, i8** %11)
  %40 = icmp eq i64 %39, 0
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i1 [ false, %35 ], [ %40, %38 ]
  br i1 %42, label %43, label %127

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %8, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @os_strcmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i8* @eap_fast_parse_start(%struct.eap_fast_pac** %9)
  store i8* %49, i8** %12, align 8
  br label %126

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %8, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @os_strcmp(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.eap_fast_pac**, %struct.eap_fast_pac*** %6, align 8
  %57 = call i8* @eap_fast_parse_end(%struct.eap_fast_pac** %56, %struct.eap_fast_pac** %9)
  store i8* %57, i8** %12, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %125

60:                                               ; preds = %50
  %61 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %9, align 8
  %62 = icmp ne %struct.eap_fast_pac* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %124

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %8, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @os_strcmp(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %9, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i8* @eap_fast_parse_pac_type(%struct.eap_fast_pac* %70, i8* %71)
  store i8* %72, i8** %12, align 8
  br label %123

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %8, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @os_strcmp(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %9, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = call i8* @eap_fast_parse_pac_key(%struct.eap_fast_pac* %79, i8* %80)
  store i8* %81, i8** %12, align 8
  br label %122

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %8, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @os_strcmp(i8* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %9, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = call i8* @eap_fast_parse_pac_opaque(%struct.eap_fast_pac* %88, i8* %89)
  store i8* %90, i8** %12, align 8
  br label %121

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %8, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @os_strcmp(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %9, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = call i8* @eap_fast_parse_a_id(%struct.eap_fast_pac* %97, i8* %98)
  store i8* %99, i8** %12, align 8
  br label %120

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %8, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @os_strcmp(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %9, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = call i8* @eap_fast_parse_i_id(%struct.eap_fast_pac* %106, i8* %107)
  store i8* %108, i8** %12, align 8
  br label %119

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %8, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @os_strcmp(i8* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %9, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = call i8* @eap_fast_parse_a_id_info(%struct.eap_fast_pac* %115, i8* %116)
  store i8* %117, i8** %12, align 8
  br label %118

118:                                              ; preds = %114, %109
  br label %119

119:                                              ; preds = %118, %105
  br label %120

120:                                              ; preds = %119, %96
  br label %121

121:                                              ; preds = %120, %87
  br label %122

122:                                              ; preds = %121, %78
  br label %123

123:                                              ; preds = %122, %69
  br label %124

124:                                              ; preds = %123, %63
  br label %125

125:                                              ; preds = %124, %55
  br label %126

126:                                              ; preds = %125, %48
  br label %35

127:                                              ; preds = %41
  %128 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %9, align 8
  %129 = icmp ne %struct.eap_fast_pac* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load i8*, i8** %12, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8** %12, align 8
  br label %134

134:                                              ; preds = %133, %130
  %135 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %9, align 8
  %136 = call i32 @eap_fast_free_pac(%struct.eap_fast_pac* %135)
  br label %137

137:                                              ; preds = %134, %127
  %138 = call i32 @eap_fast_deinit_pac_data(%struct.eap_fast_read_ctx* %8)
  %139 = load i8*, i8** %12, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load i32, i32* @MSG_INFO, align 4
  %143 = load i8*, i8** %12, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %8, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, i8*, ...) @wpa_printf(i32 %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %143, i8* %144, i32 %146)
  store i32 -1, i32* %4, align 4
  br label %153

148:                                              ; preds = %137
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i8*, i8** %7, align 8
  %152 = call i32 (i32, i8*, ...) @wpa_printf(i32 %149, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %150, i8* %151)
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %148, %141, %25, %21, %15
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i64 @eap_fast_init_pac_data(%struct.eap_sm*, i8*, %struct.eap_fast_read_ctx*) #1

declare dso_local i64 @eap_fast_read_line(%struct.eap_fast_read_ctx*, i8**) #1

declare dso_local i32 @eap_fast_deinit_pac_data(%struct.eap_fast_read_ctx*) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i8* @eap_fast_parse_start(%struct.eap_fast_pac**) #1

declare dso_local i8* @eap_fast_parse_end(%struct.eap_fast_pac**, %struct.eap_fast_pac**) #1

declare dso_local i8* @eap_fast_parse_pac_type(%struct.eap_fast_pac*, i8*) #1

declare dso_local i8* @eap_fast_parse_pac_key(%struct.eap_fast_pac*, i8*) #1

declare dso_local i8* @eap_fast_parse_pac_opaque(%struct.eap_fast_pac*, i8*) #1

declare dso_local i8* @eap_fast_parse_a_id(%struct.eap_fast_pac*, i8*) #1

declare dso_local i8* @eap_fast_parse_i_id(%struct.eap_fast_pac*, i8*) #1

declare dso_local i8* @eap_fast_parse_a_id_info(%struct.eap_fast_pac*, i8*) #1

declare dso_local i32 @eap_fast_free_pac(%struct.eap_fast_pac*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
