; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_xdelta.c_compute_delta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_xdelta.c_compute_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blocks = type { i32* }

@svn_txdelta_source = common dso_local global i32 0, align 4
@MATCH_BLOCKSIZE = common dso_local global i32 0, align 4
@svn_txdelta_new = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i8*, i32, i32*)* @compute_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_delta(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.blocks, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %11, align 4
  br label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = call i32 @svn_cstring__match_length(i8* %21, i8* %22, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp sgt i32 %33, 4
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35, %30
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @svn_txdelta_source, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @svn_txdelta__insert_op(i32* %40, i32 %41, i32 0, i32 %42, i8* null, i32* %43)
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %16, align 4
  br label %47

46:                                               ; preds = %35
  store i32 0, i32* %15, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %15, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53, %47
  %58 = load i32*, i32** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @store_delta_trailer(i32* %58, i8* %59, i32 %60, i8* %61, i32 %62, i32 %63, i32* %64)
  br label %238

66:                                               ; preds = %53
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %17, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @init_blocks_table(i8* %70, i32 %71, %struct.blocks* %13, i32* %72)
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = call i32 @init_adler32(i8* %77)
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %228, %66
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %229

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %102, %83
  %85 = getelementptr inbounds %struct.blocks, %struct.blocks* %13, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i64 @hash_flags(i32 %87)
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %14, align 4
  %92 = and i32 %91, 7
  %93 = shl i32 1, %92
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %84
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %17, align 4
  %99 = icmp slt i32 %97, %98
  br label %100

100:                                              ; preds = %96, %84
  %101 = phi i1 [ false, %84 ], [ %99, %96 ]
  br i1 %101, label %102, label %119

102:                                              ; preds = %100
  %103 = load i32, i32* %14, align 4
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = load i8*, i8** %10, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = call i32 @adler32_replace(i32 %103, i8 signext %108, i8 signext %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %84

119:                                              ; preds = %100
  %120 = load i32, i32* %14, align 4
  %121 = load i8*, i8** %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i8*, i8** %10, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @find_match(%struct.blocks* %13, i32 %120, i8* %121, i32 %122, i8* %123, i32 %124, i32* %15, i32* %19, i32 %125)
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %153

129:                                              ; preds = %119
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %129
  %136 = load i32, i32* %14, align 4
  %137 = load i8*, i8** %10, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = load i8*, i8** %10, align 8
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %142, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = call i32 @adler32_replace(i32 %136, i8 signext %141, i8 signext %148)
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %135, %129
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  br label %228

153:                                              ; preds = %119
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %16, align 4
  %156 = sub nsw i32 %154, %155
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %153
  %159 = load i32*, i32** %7, align 8
  %160 = load i32, i32* @svn_txdelta_new, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %16, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load i8*, i8** %10, align 8
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i32*, i32** %12, align 8
  %169 = call i32 @svn_txdelta__insert_op(i32* %159, i32 %160, i32 0, i32 %163, i8* %167, i32* %168)
  br label %205

170:                                              ; preds = %153
  %171 = load i8*, i8** %8, align 8
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i8*, i8** %10, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %15, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %170
  %183 = load i32, i32* %19, align 4
  br label %186

184:                                              ; preds = %170
  %185 = load i32, i32* %15, align 4
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi i32 [ %183, %182 ], [ %185, %184 ]
  %188 = call i32 @svn_cstring__reverse_match_length(i8* %174, i8* %178, i32 %187)
  store i32 %188, i32* %20, align 4
  %189 = load i32, i32* %20, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %186
  %192 = load i32*, i32** %7, align 8
  %193 = load i32, i32* %20, align 4
  %194 = call i32 @svn_txdelta__remove_copy(i32* %192, i32 %193)
  store i32 %194, i32* %20, align 4
  %195 = load i32, i32* %20, align 4
  %196 = load i32, i32* %19, align 4
  %197 = sub nsw i32 %196, %195
  store i32 %197, i32* %19, align 4
  %198 = load i32, i32* %20, align 4
  %199 = load i32, i32* %18, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %20, align 4
  %202 = load i32, i32* %15, align 4
  %203 = sub nsw i32 %202, %201
  store i32 %203, i32* %15, align 4
  br label %204

204:                                              ; preds = %191, %186
  br label %205

205:                                              ; preds = %204, %158
  %206 = load i32, i32* %18, align 4
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %15, align 4
  %209 = load i32, i32* %15, align 4
  store i32 %209, i32* %16, align 4
  %210 = load i32*, i32** %7, align 8
  %211 = load i32, i32* @svn_txdelta_source, align 4
  %212 = load i32, i32* %19, align 4
  %213 = load i32, i32* %18, align 4
  %214 = load i32*, i32** %12, align 8
  %215 = call i32 @svn_txdelta__insert_op(i32* %210, i32 %211, i32 %212, i32 %213, i8* null, i32* %214)
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %218 = add nsw i32 %216, %217
  %219 = load i32, i32* %11, align 4
  %220 = icmp sle i32 %218, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %205
  %222 = load i8*, i8** %10, align 8
  %223 = load i32, i32* %15, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  %226 = call i32 @init_adler32(i8* %225)
  store i32 %226, i32* %14, align 4
  br label %227

227:                                              ; preds = %221, %205
  br label %228

228:                                              ; preds = %227, %150
  br label %79

229:                                              ; preds = %79
  %230 = load i32*, i32** %7, align 8
  %231 = load i8*, i8** %8, align 8
  %232 = load i32, i32* %9, align 4
  %233 = load i8*, i8** %10, align 8
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* %16, align 4
  %236 = load i32*, i32** %12, align 8
  %237 = call i32 @store_delta_trailer(i32* %230, i8* %231, i32 %232, i8* %233, i32 %234, i32 %235, i32* %236)
  br label %238

238:                                              ; preds = %229, %57
  ret void
}

declare dso_local i32 @svn_cstring__match_length(i8*, i8*, i32) #1

declare dso_local i32 @svn_txdelta__insert_op(i32*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @store_delta_trailer(i32*, i8*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @init_blocks_table(i8*, i32, %struct.blocks*, i32*) #1

declare dso_local i32 @init_adler32(i8*) #1

declare dso_local i64 @hash_flags(i32) #1

declare dso_local i32 @adler32_replace(i32, i8 signext, i8 signext) #1

declare dso_local i32 @find_match(%struct.blocks*, i32, i8*, i32, i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @svn_cstring__reverse_match_length(i8*, i8*, i32) #1

declare dso_local i32 @svn_txdelta__remove_copy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
