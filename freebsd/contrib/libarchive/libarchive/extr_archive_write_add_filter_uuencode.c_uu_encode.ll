; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_uuencode.c_uu_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_uuencode.c_uu_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_string*, i8*, i64)* @uu_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uu_encode(%struct.archive_string* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.archive_string*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.archive_string* %0, %struct.archive_string** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %7, align 4
  %10 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 32
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ 96, %16 ]
  %19 = trunc i32 %18 to i8
  %20 = call i32 @archive_strappend_char(%struct.archive_string* %10, i8 signext %19)
  br label %21

21:                                               ; preds = %105, %17
  %22 = load i64, i64* %6, align 8
  %23 = icmp uge i64 %22, 3
  br i1 %23, label %24, label %110

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = ashr i32 %28, 2
  store i32 %29, i32* %7, align 4
  %30 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 32
  br label %37

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 96, %36 ]
  %39 = trunc i32 %38 to i8
  %40 = call i32 @archive_strappend_char(%struct.archive_string* %30, i8 signext %39)
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 3
  %46 = shl i32 %45, 4
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 240
  %52 = ashr i32 %51, 4
  %53 = or i32 %46, %52
  store i32 %53, i32* %7, align 4
  %54 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %37
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 32
  br label %61

60:                                               ; preds = %37
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %59, %57 ], [ 96, %60 ]
  %63 = trunc i32 %62 to i8
  %64 = call i32 @archive_strappend_char(%struct.archive_string* %54, i8 signext %63)
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 15
  %70 = shl i32 %69, 2
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 192
  %76 = ashr i32 %75, 6
  %77 = or i32 %70, %76
  store i32 %77, i32* %7, align 4
  %78 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %61
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 32
  br label %85

84:                                               ; preds = %61
  br label %85

85:                                               ; preds = %84, %81
  %86 = phi i32 [ %83, %81 ], [ 96, %84 ]
  %87 = trunc i32 %86 to i8
  %88 = call i32 @archive_strappend_char(%struct.archive_string* %78, i8 signext %87)
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 63
  store i32 %93, i32* %7, align 4
  %94 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %85
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 32
  br label %101

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100, %97
  %102 = phi i32 [ %99, %97 ], [ 96, %100 ]
  %103 = trunc i32 %102 to i8
  %104 = call i32 @archive_strappend_char(%struct.archive_string* %94, i8 signext %103)
  br label %105

105:                                              ; preds = %101
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 3
  store i8* %107, i8** %5, align 8
  %108 = load i64, i64* %6, align 8
  %109 = sub i64 %108, 3
  store i64 %109, i64* %6, align 8
  br label %21

110:                                              ; preds = %21
  %111 = load i64, i64* %6, align 8
  %112 = icmp ugt i64 %111, 0
  br i1 %112, label %113, label %194

113:                                              ; preds = %110
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = ashr i32 %117, 2
  store i32 %118, i32* %7, align 4
  %119 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 32
  br label %126

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %122
  %127 = phi i32 [ %124, %122 ], [ 96, %125 ]
  %128 = trunc i32 %127 to i8
  %129 = call i32 @archive_strappend_char(%struct.archive_string* %119, i8 signext %128)
  %130 = load i8*, i8** %5, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %133, 3
  %135 = shl i32 %134, 4
  store i32 %135, i32* %7, align 4
  %136 = load i64, i64* %6, align 8
  %137 = icmp eq i64 %136, 1
  br i1 %137, label %138, label %154

138:                                              ; preds = %126
  %139 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 32
  br label %146

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %145, %142
  %147 = phi i32 [ %144, %142 ], [ 96, %145 ]
  %148 = trunc i32 %147 to i8
  %149 = call i32 @archive_strappend_char(%struct.archive_string* %139, i8 signext %148)
  %150 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %151 = call i32 @archive_strappend_char(%struct.archive_string* %150, i8 signext 96)
  %152 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %153 = call i32 @archive_strappend_char(%struct.archive_string* %152, i8 signext 96)
  br label %193

154:                                              ; preds = %126
  %155 = load i8*, i8** %5, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = and i32 %158, 240
  %160 = ashr i32 %159, 4
  %161 = load i32, i32* %7, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %7, align 4
  %163 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %154
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 32
  br label %170

169:                                              ; preds = %154
  br label %170

170:                                              ; preds = %169, %166
  %171 = phi i32 [ %168, %166 ], [ 96, %169 ]
  %172 = trunc i32 %171 to i8
  %173 = call i32 @archive_strappend_char(%struct.archive_string* %163, i8 signext %172)
  %174 = load i8*, i8** %5, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = and i32 %177, 15
  %179 = shl i32 %178, 2
  store i32 %179, i32* %7, align 4
  %180 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %170
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 32
  br label %187

186:                                              ; preds = %170
  br label %187

187:                                              ; preds = %186, %183
  %188 = phi i32 [ %185, %183 ], [ 96, %186 ]
  %189 = trunc i32 %188 to i8
  %190 = call i32 @archive_strappend_char(%struct.archive_string* %180, i8 signext %189)
  %191 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %192 = call i32 @archive_strappend_char(%struct.archive_string* %191, i8 signext 96)
  br label %193

193:                                              ; preds = %187, %146
  br label %194

194:                                              ; preds = %193, %110
  %195 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %196 = call i32 @archive_strappend_char(%struct.archive_string* %195, i8 signext 10)
  ret void
}

declare dso_local i32 @archive_strappend_char(%struct.archive_string*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
