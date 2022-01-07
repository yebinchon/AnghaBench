; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_globbrace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_globbrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i64, i32 }
%struct.blk_buf = type { i32 }

@Strbuf_INIT = common dso_local global %struct.Strbuf zeroinitializer, align 8
@BLK_BUF_INIT = common dso_local global %struct.blk_buf zeroinitializer, align 4
@RBRK = common dso_local global i64 0, align 8
@EOS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64***)* @globbrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @globbrace(i64* %0, i64*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64***, align 8
  %6 = alloca %struct.Strbuf, align 8
  %7 = alloca %struct.blk_buf, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64*** %1, i64**** %5, align 8
  %14 = bitcast %struct.Strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.Strbuf* @Strbuf_INIT to i8*), i64 16, i1 false)
  %15 = bitcast %struct.blk_buf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.blk_buf* @BLK_BUF_INIT to i8*), i64 4, i1 false)
  %16 = load i64*, i64** %4, align 8
  store i64* %16, i64** %9, align 8
  br label %17

17:                                               ; preds = %22, %2
  %18 = load i64*, i64** %9, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 130
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21
  %23 = load i64*, i64** %9, align 8
  %24 = getelementptr inbounds i64, i64* %23, i32 1
  store i64* %24, i64** %9, align 8
  br label %17

25:                                               ; preds = %17
  %26 = load i64*, i64** %9, align 8
  %27 = load i64*, i64** %4, align 8
  %28 = ptrtoint i64* %26 to i64
  %29 = ptrtoint i64* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 8
  store i64 %31, i64* %13, align 8
  store i32 0, i32* %8, align 4
  %32 = load i64*, i64** %9, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %9, align 8
  store i64* %33, i64** %11, align 8
  br label %34

34:                                               ; preds = %92, %25
  %35 = load i64*, i64** %11, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %95

38:                                               ; preds = %34
  %39 = load i64*, i64** %11, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 129
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load i64*, i64** %11, align 8
  %44 = getelementptr inbounds i64, i64* %43, i32 1
  store i64* %44, i64** %11, align 8
  br label %45

45:                                               ; preds = %58, %42
  %46 = load i64*, i64** %11, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RBRK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i64*, i64** %11, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @EOS, align 8
  %54 = icmp ne i64 %52, %53
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i1 [ false, %45 ], [ %54, %50 ]
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57
  %59 = load i64*, i64** %11, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %11, align 8
  br label %45

61:                                               ; preds = %55
  %62 = load i64*, i64** %11, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @EOS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i64, i64* @RBRK, align 8
  %68 = sub nsw i64 0, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %3, align 4
  br label %203

70:                                               ; preds = %61
  br label %91

71:                                               ; preds = %38
  %72 = load i64*, i64** %11, align 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 130
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %90

78:                                               ; preds = %71
  %79 = load i64*, i64** %11, align 8
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 128
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %95

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %86, %78
  br label %90

90:                                               ; preds = %89, %75
  br label %91

91:                                               ; preds = %90, %70
  br label %92

92:                                               ; preds = %91
  %93 = load i64*, i64** %11, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 1
  store i64* %94, i64** %11, align 8
  br label %34

95:                                               ; preds = %85, %34
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load i64*, i64** %11, align 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98, %95
  store i32 -128, i32* %3, align 4
  br label %203

103:                                              ; preds = %98
  %104 = load i64*, i64** %4, align 8
  %105 = load i64, i64* %13, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @Strbuf_appendn(%struct.Strbuf* %6, i64* %104, i32 %106)
  store i32 0, i32* %8, align 4
  %108 = load i64*, i64** %9, align 8
  store i64* %108, i64** %10, align 8
  store i64* %108, i64** %12, align 8
  br label %109

109:                                              ; preds = %192, %103
  %110 = load i64*, i64** %10, align 8
  %111 = load i64*, i64** %11, align 8
  %112 = icmp ule i64* %110, %111
  br i1 %112, label %113, label %195

113:                                              ; preds = %109
  %114 = load i64*, i64** %10, align 8
  %115 = load i64, i64* %114, align 8
  switch i64 %115, label %190 [
    i64 129, label %116
    i64 130, label %149
    i64 128, label %152
    i64 44, label %159
  ]

116:                                              ; preds = %113
  %117 = load i64*, i64** %10, align 8
  %118 = getelementptr inbounds i64, i64* %117, i32 1
  store i64* %118, i64** %10, align 8
  br label %119

119:                                              ; preds = %132, %116
  %120 = load i64*, i64** %10, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @RBRK, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i64*, i64** %10, align 8
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @EOS, align 8
  %128 = icmp ne i64 %126, %127
  br label %129

129:                                              ; preds = %124, %119
  %130 = phi i1 [ false, %119 ], [ %128, %124 ]
  br i1 %130, label %131, label %135

131:                                              ; preds = %129
  br label %132

132:                                              ; preds = %131
  %133 = load i64*, i64** %10, align 8
  %134 = getelementptr inbounds i64, i64* %133, i32 1
  store i64* %134, i64** %10, align 8
  br label %119

135:                                              ; preds = %129
  %136 = load i64*, i64** %10, align 8
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @EOS, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = call i32 @bb_cleanup(%struct.blk_buf* %7)
  %142 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %6, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @xfree(i32 %143)
  %145 = load i64, i64* @RBRK, align 8
  %146 = sub nsw i64 0, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %3, align 4
  br label %203

148:                                              ; preds = %135
  br label %191

149:                                              ; preds = %113
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %191

152:                                              ; preds = %113
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %8, align 4
  br label %191

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %113, %158
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i64*, i64** %10, align 8
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 44
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %191

167:                                              ; preds = %162, %159
  %168 = load i64, i64* %13, align 8
  %169 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %6, i32 0, i32 0
  store i64 %168, i64* %169, align 8
  %170 = load i64*, i64** %12, align 8
  %171 = load i64*, i64** %10, align 8
  %172 = load i64*, i64** %12, align 8
  %173 = ptrtoint i64* %171 to i64
  %174 = ptrtoint i64* %172 to i64
  %175 = sub i64 %173, %174
  %176 = sdiv exact i64 %175, 8
  %177 = trunc i64 %176 to i32
  %178 = call i32 @Strbuf_appendn(%struct.Strbuf* %6, i64* %170, i32 %177)
  %179 = load i64*, i64** %11, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 1
  %181 = call i32 @Strbuf_append(%struct.Strbuf* %6, i64* %180)
  %182 = call i32 @Strbuf_terminate(%struct.Strbuf* %6)
  %183 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %6, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @Strsave(i32 %184)
  %186 = call i32 @bb_append(%struct.blk_buf* %7, i32 %185)
  %187 = load i64*, i64** %10, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 1
  store i64* %188, i64** %12, align 8
  br label %189

189:                                              ; preds = %167
  br label %191

190:                                              ; preds = %113
  br label %191

191:                                              ; preds = %190, %189, %166, %155, %149, %148
  br label %192

192:                                              ; preds = %191
  %193 = load i64*, i64** %10, align 8
  %194 = getelementptr inbounds i64, i64* %193, i32 1
  store i64* %194, i64** %10, align 8
  br label %109

195:                                              ; preds = %109
  %196 = call i64** @bb_finish(%struct.blk_buf* %7)
  %197 = load i64***, i64**** %5, align 8
  store i64** %196, i64*** %197, align 8
  %198 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %6, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @xfree(i32 %199)
  %201 = getelementptr inbounds %struct.blk_buf, %struct.blk_buf* %7, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %195, %140, %102, %66
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Strbuf_appendn(%struct.Strbuf*, i64*, i32) #2

declare dso_local i32 @bb_cleanup(%struct.blk_buf*) #2

declare dso_local i32 @xfree(i32) #2

declare dso_local i32 @Strbuf_append(%struct.Strbuf*, i64*) #2

declare dso_local i32 @Strbuf_terminate(%struct.Strbuf*) #2

declare dso_local i32 @bb_append(%struct.blk_buf*, i32) #2

declare dso_local i32 @Strsave(i32) #2

declare dso_local i64** @bb_finish(%struct.blk_buf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
