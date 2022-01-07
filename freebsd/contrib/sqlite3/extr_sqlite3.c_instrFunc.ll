; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_instrFunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_instrFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_NULL = common dso_local global i32 0, align 4
@SQLITE_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @instrFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @instrFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32 1, i32* %13, align 4
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @UNUSED_PARAMETER(i32 %18)
  %20 = load i32**, i32*** %6, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @sqlite3_value_type(i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32**, i32*** %6, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @sqlite3_value_type(i32* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @SQLITE_NULL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @SQLITE_NULL, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %3
  br label %182

36:                                               ; preds = %31
  %37 = load i32**, i32*** %6, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @sqlite3_value_bytes(i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32**, i32*** %6, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @sqlite3_value_bytes(i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %170

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @SQLITE_BLOB, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @SQLITE_BLOB, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32**, i32*** %6, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i8* @sqlite3_value_blob(i32* %58)
  store i8* %59, i8** %7, align 8
  %60 = load i32**, i32*** %6, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i8* @sqlite3_value_blob(i32* %62)
  store i8* %63, i8** %8, align 8
  store i32 0, i32* %14, align 4
  br label %107

64:                                               ; preds = %51, %47
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @SQLITE_BLOB, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @SQLITE_BLOB, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i32**, i32*** %6, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i8* @sqlite3_value_text(i32* %75)
  store i8* %76, i8** %7, align 8
  %77 = load i32**, i32*** %6, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i8* @sqlite3_value_text(i32* %79)
  store i8* %80, i8** %8, align 8
  store i32 1, i32* %14, align 4
  br label %106

81:                                               ; preds = %68, %64
  %82 = load i32**, i32*** %6, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32* @sqlite3_value_dup(i32* %84)
  store i32* %85, i32** %16, align 8
  %86 = load i32*, i32** %16, align 8
  %87 = call i8* @sqlite3_value_text(i32* %86)
  store i8* %87, i8** %7, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %179

91:                                               ; preds = %81
  %92 = load i32*, i32** %16, align 8
  %93 = call i32 @sqlite3_value_bytes(i32* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32**, i32*** %6, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32* @sqlite3_value_dup(i32* %96)
  store i32* %97, i32** %17, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = call i8* @sqlite3_value_text(i32* %98)
  store i8* %99, i8** %8, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %179

103:                                              ; preds = %91
  %104 = load i32*, i32** %17, align 8
  %105 = call i32 @sqlite3_value_bytes(i32* %104)
  store i32 %105, i32* %10, align 4
  store i32 1, i32* %14, align 4
  br label %106

106:                                              ; preds = %103, %72
  br label %107

107:                                              ; preds = %106, %55
  %108 = load i8*, i8** %8, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i8*, i8** %7, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %113, %107
  br label %179

117:                                              ; preds = %113, %110
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  store i8 %120, i8* %15, align 1
  br label %121

121:                                              ; preds = %163, %117
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp sle i32 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %121
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i8, i8* %15, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %129, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %125
  %134 = load i8*, i8** %7, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i64 @memcmp(i8* %134, i8* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br label %139

139:                                              ; preds = %133, %125
  %140 = phi i1 [ true, %125 ], [ %138, %133 ]
  br label %141

141:                                              ; preds = %139, %121
  %142 = phi i1 [ false, %121 ], [ %140, %139 ]
  br i1 %142, label %143, label %164

143:                                              ; preds = %141
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %161, %143
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %9, align 4
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %7, align 8
  br label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = and i32 %158, 192
  %160 = icmp eq i32 %159, 128
  br label %161

161:                                              ; preds = %154, %151
  %162 = phi i1 [ false, %151 ], [ %160, %154 ]
  br i1 %162, label %146, label %163

163:                                              ; preds = %161
  br label %121

164:                                              ; preds = %141
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store i32 0, i32* %13, align 4
  br label %169

169:                                              ; preds = %168, %164
  br label %170

170:                                              ; preds = %169, %36
  %171 = load i32*, i32** %4, align 8
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @sqlite3_result_int(i32* %171, i32 %172)
  br label %174

174:                                              ; preds = %179, %170
  %175 = load i32*, i32** %16, align 8
  %176 = call i32 @sqlite3_value_free(i32* %175)
  %177 = load i32*, i32** %17, align 8
  %178 = call i32 @sqlite3_value_free(i32* %177)
  br label %182

179:                                              ; preds = %116, %102, %90
  %180 = load i32*, i32** %4, align 8
  %181 = call i32 @sqlite3_result_error_nomem(i32* %180)
  br label %174

182:                                              ; preds = %174, %35
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i8* @sqlite3_value_blob(i32*) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32* @sqlite3_value_dup(i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i32 @sqlite3_value_free(i32*) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
