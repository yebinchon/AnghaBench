; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_enum.c_enum_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_enum.c_enum_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32)*, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@OPTPROC_EMIT_LIMIT = common dso_local global %struct.TYPE_9__* null, align 8
@option_usage_fp = common dso_local global i32 0, align 4
@pz_enum_err_fmt = common dso_local global i8* null, align 8
@zValidKeys = common dso_local global i8* null, align 8
@ENUM_ERR_LINE = common dso_local global i8* null, align 8
@NL = common dso_local global i8 0, align 1
@ENUM_ERR_WIDTH = common dso_local global i8* null, align 8
@TWO_SPACES_STR = common dso_local global i32 0, align 4
@NLSTR_SPACE_FMT = common dso_local global i8* null, align 8
@NLSTR_FMT = common dso_local global i8* null, align 8
@zIntRange = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@OPARG_TYPE_MEMBERSHIP = common dso_local global i64 0, align 8
@zLowerBits = common dso_local global i8* null, align 8
@zSetMemberSettings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*, i8**, i32)* @enum_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enum_err(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [16 x i8], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @OPTPROC_EMIT_LIMIT, align 8
  %20 = icmp ugt %struct.TYPE_9__* %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %4
  %22 = load i32, i32* @option_usage_fp, align 4
  %23 = load i8*, i8** @pz_enum_err_fmt, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* %23, i32 %26, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %21, %4
  %36 = load i32, i32* @option_usage_fp, align 4
  %37 = load i8*, i8** @zValidKeys, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* %37, i32 %40)
  %42 = load i8**, i8*** %7, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 127
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load i8**, i8*** %7, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %7, align 8
  store i32 1, i32* %12, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %8, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %47, %35
  %53 = load i8**, i8*** %7, align 8
  store i8** %53, i8*** %13, align 8
  br label %54

54:                                               ; preds = %71, %52
  %55 = load i8**, i8*** %13, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %13, align 8
  %57 = load i8*, i8** %55, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = call i32 @strlen(i32 %58)
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i64, i64* %14, align 8
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %65, %54
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %10, align 8
  br label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %11, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %54, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %11, align 4
  %77 = load i64, i64* %9, align 8
  %78 = icmp ugt i64 %77, 35
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %87, %79
  %81 = load i32, i32* @option_usage_fp, align 4
  %82 = load i8*, i8** @ENUM_ERR_LINE, align 8
  %83 = load i8**, i8*** %7, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i32 1
  store i8** %84, i8*** %7, align 8
  %85 = load i8*, i8** %83, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* %82, i8* %85)
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %11, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %80, label %91

91:                                               ; preds = %87
  br label %159

92:                                               ; preds = %75
  %93 = load i64, i64* %10, align 8
  %94 = icmp ult i64 %93, 76
  br i1 %94, label %95, label %115

95:                                               ; preds = %92
  %96 = load i32, i32* @option_usage_fp, align 4
  %97 = call i32 @fputc(i8 signext 32, i32 %96)
  br label %98

98:                                               ; preds = %107, %95
  %99 = load i32, i32* @option_usage_fp, align 4
  %100 = call i32 @fputc(i8 signext 32, i32 %99)
  %101 = load i8**, i8*** %7, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i32 1
  store i8** %102, i8*** %7, align 8
  %103 = load i8*, i8** %101, align 8
  %104 = ptrtoint i8* %103 to i32
  %105 = load i32, i32* @option_usage_fp, align 4
  %106 = call i32 @fputs(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %11, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %98, label %111

111:                                              ; preds = %107
  %112 = load i8, i8* @NL, align 1
  %113 = load i32, i32* @option_usage_fp, align 4
  %114 = call i32 @fputc(i8 signext %112, i32 %113)
  br label %158

115:                                              ; preds = %92
  store i32 0, i32* %15, align 4
  %116 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %117 = load i8*, i8** @ENUM_ERR_WIDTH, align 8
  %118 = load i64, i64* %9, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @sprintf(i8* %116, i8* %117, i32 %119)
  %121 = load i64, i64* %9, align 8
  %122 = udiv i64 78, %121
  store i64 %122, i64* %9, align 8
  %123 = load i32, i32* @TWO_SPACES_STR, align 4
  %124 = load i32, i32* @option_usage_fp, align 4
  %125 = call i32 @fputs(i32 %123, i32 %124)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %151, %115
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %11, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %127
  %132 = load i32, i32* %15, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %15, align 4
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* %9, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load i32, i32* @option_usage_fp, align 4
  %139 = load i8*, i8** @NLSTR_SPACE_FMT, align 8
  %140 = load i8**, i8*** %7, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i32 1
  store i8** %141, i8*** %7, align 8
  %142 = load i8*, i8** %140, align 8
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* %139, i8* %142)
  store i32 0, i32* %15, align 4
  br label %151

144:                                              ; preds = %131
  %145 = load i32, i32* @option_usage_fp, align 4
  %146 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %147 = load i8**, i8*** %7, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i32 1
  store i8** %148, i8*** %7, align 8
  %149 = load i8*, i8** %147, align 8
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* %146, i8* %149)
  br label %151

151:                                              ; preds = %144, %137
  br label %127

152:                                              ; preds = %127
  %153 = load i32, i32* @option_usage_fp, align 4
  %154 = load i8*, i8** @NLSTR_FMT, align 8
  %155 = load i8**, i8*** %7, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* %154, i8* %156)
  br label %158

158:                                              ; preds = %152, %111
  br label %159

159:                                              ; preds = %158, %91
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** @OPTPROC_EMIT_LIMIT, align 8
  %162 = icmp ugt %struct.TYPE_9__* %160, %161
  br i1 %162, label %163, label %178

163:                                              ; preds = %159
  %164 = load i32, i32* @option_usage_fp, align 4
  %165 = load i8*, i8** @zIntRange, align 8
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %8, align 4
  %168 = sub nsw i32 %167, 1
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %168, %169
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %164, i8* %165, i32 %166, i32 %170)
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %173, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %176 = load i32, i32* @EXIT_FAILURE, align 4
  %177 = call i32 %174(%struct.TYPE_9__* %175, i32 %176)
  br label %178

178:                                              ; preds = %163, %159
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @OPTST_GET_ARGTYPE(i32 %181)
  %183 = load i64, i64* @OPARG_TYPE_MEMBERSHIP, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %178
  %186 = load i32, i32* @option_usage_fp, align 4
  %187 = load i8*, i8** @zLowerBits, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 (i32, i8*, ...) @fprintf(i32 %186, i8* %187, i32 %188)
  %190 = load i32, i32* @zSetMemberSettings, align 4
  %191 = load i32, i32* @option_usage_fp, align 4
  %192 = call i32 @fputs(i32 %190, i32 %191)
  br label %202

193:                                              ; preds = %178
  %194 = load i32, i32* @option_usage_fp, align 4
  %195 = load i8*, i8** @zIntRange, align 8
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %8, align 4
  %198 = sub nsw i32 %197, 1
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %198, %199
  %201 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* %195, i32 %196, i32 %200)
  br label %202

202:                                              ; preds = %193, %185
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @OPTST_GET_ARGTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
