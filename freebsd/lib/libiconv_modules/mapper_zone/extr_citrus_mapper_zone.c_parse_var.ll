; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_zone/extr_citrus_mapper_zone.c_parse_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_zone/extr_citrus_mapper_zone.c_parse_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_mapper_zone = type { i32, i64, %struct.TYPE_3__, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct._memstream = type { i32 }
%struct._parse_state = type { i32, i64, i32 }

@S_BEGIN = common dso_local global i32 0, align 4
@T_IMM = common dso_local global i8 0, align 1
@S_OFFSET = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_mapper_zone*, %struct._memstream*)* @parse_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_var(%struct._citrus_mapper_zone* %0, %struct._memstream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._citrus_mapper_zone*, align 8
  %5 = alloca %struct._memstream*, align 8
  %6 = alloca %struct._parse_state, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct._citrus_mapper_zone* %0, %struct._citrus_mapper_zone** %4, align 8
  store %struct._memstream* %1, %struct._memstream** %5, align 8
  %11 = load i32, i32* @S_BEGIN, align 4
  %12 = getelementptr inbounds %struct._parse_state, %struct._parse_state* %6, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = load %struct._memstream*, %struct._memstream** %5, align 8
  %14 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %15 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %14, i32 0, i32 4
  %16 = call i64 @parse_zone(%struct._memstream* %13, %struct._parse_state* %6, %struct.TYPE_3__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %182

19:                                               ; preds = %2
  %20 = load %struct._memstream*, %struct._memstream** %5, align 8
  %21 = call signext i8 @get_tok(%struct._memstream* %20, %struct._parse_state* %6)
  %22 = sext i8 %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 47
  br i1 %24, label %25, label %71

25:                                               ; preds = %19
  store i32 1, i32* %9, align 4
  %26 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %27 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %26, i32 0, i32 2
  %28 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %29 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %28, i32 0, i32 4
  %30 = bitcast %struct.TYPE_3__* %27 to i8*
  %31 = bitcast %struct.TYPE_3__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = load %struct._memstream*, %struct._memstream** %5, align 8
  %33 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %34 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %33, i32 0, i32 4
  %35 = call i64 @parse_zone(%struct._memstream* %32, %struct._parse_state* %6, %struct.TYPE_3__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %182

38:                                               ; preds = %25
  %39 = load %struct._memstream*, %struct._memstream** %5, align 8
  %40 = call signext i8 @get_tok(%struct._memstream* %39, %struct._parse_state* %6)
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 47
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %182

44:                                               ; preds = %38
  %45 = load %struct._memstream*, %struct._memstream** %5, align 8
  %46 = call signext i8 @get_tok(%struct._memstream* %45, %struct._parse_state* %6)
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* @T_IMM, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %182

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct._parse_state, %struct._parse_state* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %56 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %58 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %63 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 32
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %52
  store i32 -1, i32* %3, align 4
  br label %182

67:                                               ; preds = %61
  %68 = load %struct._memstream*, %struct._memstream** %5, align 8
  %69 = call signext i8 @get_tok(%struct._memstream* %68, %struct._parse_state* %6)
  %70 = sext i8 %69 to i32
  store i32 %70, i32* %10, align 4
  br label %80

71:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  %72 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %73 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %72, i32 0, i32 0
  store i32 32, i32* %73, align 8
  %74 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %75 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %78 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %71, %67
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 58
  br i1 %82, label %83, label %131

83:                                               ; preds = %80
  %84 = load i32, i32* @S_OFFSET, align 4
  %85 = getelementptr inbounds %struct._parse_state, %struct._parse_state* %6, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = load %struct._memstream*, %struct._memstream** %5, align 8
  %87 = call signext i8 @get_tok(%struct._memstream* %86, %struct._parse_state* %6)
  %88 = sext i8 %87 to i32
  %89 = load i8, i8* @T_IMM, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  store i32 -1, i32* %3, align 4
  br label %182

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct._parse_state, %struct._parse_state* %6, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %97 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %93
  %101 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %102 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %105 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct._memstream*, %struct._memstream** %5, align 8
  %107 = call signext i8 @get_tok(%struct._memstream* %106, %struct._parse_state* %6)
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 47
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  store i32 -1, i32* %3, align 4
  br label %182

111:                                              ; preds = %100
  %112 = load %struct._memstream*, %struct._memstream** %5, align 8
  %113 = call signext i8 @get_tok(%struct._memstream* %112, %struct._parse_state* %6)
  %114 = sext i8 %113 to i32
  %115 = load i8, i8* @T_IMM, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %114, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store i32 -1, i32* %3, align 4
  br label %182

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct._parse_state, %struct._parse_state* %6, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %123 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %122, i32 0, i32 3
  store i64 %121, i64* %123, align 8
  br label %127

124:                                              ; preds = %93
  %125 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %126 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %124, %119
  %128 = load %struct._memstream*, %struct._memstream** %5, align 8
  %129 = call signext i8 @get_tok(%struct._memstream* %128, %struct._parse_state* %6)
  %130 = sext i8 %129 to i32
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %127, %80
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @EOF, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 -1, i32* %3, align 4
  br label %182

136:                                              ; preds = %131
  %137 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %138 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 32
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %147

142:                                              ; preds = %136
  %143 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %144 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = shl i32 1, %145
  br label %147

147:                                              ; preds = %142, %141
  %148 = phi i32 [ 0, %141 ], [ %146, %142 ]
  store i32 %148, i32* %7, align 4
  %149 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %150 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %160

154:                                              ; preds = %147
  %155 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %156 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 32, %157
  %159 = shl i32 1, %158
  br label %160

160:                                              ; preds = %154, %153
  %161 = phi i32 [ 0, %153 ], [ %159, %154 ]
  store i32 %161, i32* %8, align 4
  %162 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %163 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %162, i32 0, i32 4
  %164 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %165 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call i64 @check_rowcol(%struct.TYPE_3__* %163, i64 %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  store i32 -1, i32* %3, align 4
  br label %182

171:                                              ; preds = %160
  %172 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %173 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %172, i32 0, i32 2
  %174 = load %struct._citrus_mapper_zone*, %struct._citrus_mapper_zone** %4, align 8
  %175 = getelementptr inbounds %struct._citrus_mapper_zone, %struct._citrus_mapper_zone* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = call i64 @check_rowcol(%struct.TYPE_3__* %173, i64 %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  store i32 -1, i32* %3, align 4
  br label %182

181:                                              ; preds = %171
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %181, %180, %170, %135, %118, %110, %92, %66, %51, %43, %37, %18
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i64 @parse_zone(%struct._memstream*, %struct._parse_state*, %struct.TYPE_3__*) #1

declare dso_local signext i8 @get_tok(%struct._memstream*, %struct._parse_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @check_rowcol(%struct.TYPE_3__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
