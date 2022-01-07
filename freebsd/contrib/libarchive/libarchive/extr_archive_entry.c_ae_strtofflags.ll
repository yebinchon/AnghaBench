; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_ae_strtofflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_ae_strtofflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flag = type { i64, i64, i32* }

@flags = common dso_local global %struct.flag* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*, i64*)* @ae_strtofflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ae_strtofflags(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.flag*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %7, align 8
  store i8* null, i8** %12, align 8
  br label %16

16:                                               ; preds = %33, %3
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 44
  br label %31

31:                                               ; preds = %26, %21, %16
  %32 = phi i1 [ true, %21 ], [ true, %16 ], [ %30, %26 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  br label %16

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %170, %36
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %171

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %66, %42
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 9
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 32
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 44
  br label %64

64:                                               ; preds = %59, %54, %49, %44
  %65 = phi i1 [ false, %54 ], [ false, %49 ], [ false, %44 ], [ %63, %59 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %8, align 8
  br label %44

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  store i64 %74, i64* %13, align 8
  %75 = load %struct.flag*, %struct.flag** @flags, align 8
  store %struct.flag* %75, %struct.flag** %9, align 8
  br label %76

76:                                               ; preds = %135, %69
  %77 = load %struct.flag*, %struct.flag** %9, align 8
  %78 = getelementptr inbounds %struct.flag, %struct.flag* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %138

81:                                               ; preds = %76
  %82 = load %struct.flag*, %struct.flag** %9, align 8
  %83 = getelementptr inbounds %struct.flag, %struct.flag* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = call i64 @strlen(i32* %84)
  store i64 %85, i64* %14, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %81
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.flag*, %struct.flag** %9, align 8
  %92 = getelementptr inbounds %struct.flag, %struct.flag* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %13, align 8
  %95 = call i64 @memcmp(i8* %90, i32* %93, i64 %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %89
  %98 = load %struct.flag*, %struct.flag** %9, align 8
  %99 = getelementptr inbounds %struct.flag, %struct.flag* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = or i64 %101, %100
  store i64 %102, i64* %11, align 8
  %103 = load %struct.flag*, %struct.flag** %9, align 8
  %104 = getelementptr inbounds %struct.flag, %struct.flag* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = or i64 %106, %105
  store i64 %107, i64* %10, align 8
  br label %138

108:                                              ; preds = %89, %81
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %14, align 8
  %111 = sub i64 %110, 2
  %112 = icmp eq i64 %109, %111
  br i1 %112, label %113, label %133

113:                                              ; preds = %108
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.flag*, %struct.flag** %9, align 8
  %116 = getelementptr inbounds %struct.flag, %struct.flag* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i64, i64* %13, align 8
  %120 = call i64 @memcmp(i8* %114, i32* %118, i64 %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %113
  %123 = load %struct.flag*, %struct.flag** %9, align 8
  %124 = getelementptr inbounds %struct.flag, %struct.flag* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %10, align 8
  %127 = or i64 %126, %125
  store i64 %127, i64* %10, align 8
  %128 = load %struct.flag*, %struct.flag** %9, align 8
  %129 = getelementptr inbounds %struct.flag, %struct.flag* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %11, align 8
  %132 = or i64 %131, %130
  store i64 %132, i64* %11, align 8
  br label %138

133:                                              ; preds = %113, %108
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.flag*, %struct.flag** %9, align 8
  %137 = getelementptr inbounds %struct.flag, %struct.flag* %136, i32 1
  store %struct.flag* %137, %struct.flag** %9, align 8
  br label %76

138:                                              ; preds = %122, %97, %76
  %139 = load %struct.flag*, %struct.flag** %9, align 8
  %140 = getelementptr inbounds %struct.flag, %struct.flag* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i8*, i8** %12, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i8*, i8** %7, align 8
  store i8* %147, i8** %12, align 8
  br label %148

148:                                              ; preds = %146, %143, %138
  %149 = load i8*, i8** %8, align 8
  store i8* %149, i8** %7, align 8
  br label %150

150:                                              ; preds = %167, %148
  %151 = load i8*, i8** %7, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 9
  br i1 %154, label %165, label %155

155:                                              ; preds = %150
  %156 = load i8*, i8** %7, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 32
  br i1 %159, label %165, label %160

160:                                              ; preds = %155
  %161 = load i8*, i8** %7, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 44
  br label %165

165:                                              ; preds = %160, %155, %150
  %166 = phi i1 [ true, %155 ], [ true, %150 ], [ %164, %160 ]
  br i1 %166, label %167, label %170

167:                                              ; preds = %165
  %168 = load i8*, i8** %7, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %7, align 8
  br label %150

170:                                              ; preds = %165
  br label %37

171:                                              ; preds = %37
  %172 = load i64*, i64** %5, align 8
  %173 = icmp ne i64* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i64, i64* %10, align 8
  %176 = load i64*, i64** %5, align 8
  store i64 %175, i64* %176, align 8
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i64*, i64** %6, align 8
  %179 = icmp ne i64* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i64, i64* %11, align 8
  %182 = load i64*, i64** %6, align 8
  store i64 %181, i64* %182, align 8
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i8*, i8** %12, align 8
  ret i8* %184
}

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @memcmp(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
