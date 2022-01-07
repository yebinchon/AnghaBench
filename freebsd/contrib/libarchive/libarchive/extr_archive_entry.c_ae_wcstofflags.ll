; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_ae_wcstofflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_ae_wcstofflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flag = type { i64, i64, i32* }

@flags = common dso_local global %struct.flag* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64*, i64*)* @ae_wcstofflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ae_wcstofflags(i32* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.flag*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  %15 = load i32*, i32** %4, align 8
  store i32* %15, i32** %7, align 8
  store i32* null, i32** %12, align 8
  br label %16

16:                                               ; preds = %30, %3
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 44
  br label %28

28:                                               ; preds = %24, %20, %16
  %29 = phi i1 [ true, %20 ], [ true, %16 ], [ %27, %24 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %7, align 8
  br label %16

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %160, %33
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %161

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  store i32* %39, i32** %8, align 8
  br label %40

40:                                               ; preds = %58, %38
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 9
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 32
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 44
  br label %56

56:                                               ; preds = %52, %48, %44, %40
  %57 = phi i1 [ false, %48 ], [ false, %44 ], [ false, %40 ], [ %55, %52 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %8, align 8
  br label %40

61:                                               ; preds = %56
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = ptrtoint i32* %62 to i64
  %65 = ptrtoint i32* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  store i64 %67, i64* %13, align 8
  %68 = load %struct.flag*, %struct.flag** @flags, align 8
  store %struct.flag* %68, %struct.flag** %9, align 8
  br label %69

69:                                               ; preds = %128, %61
  %70 = load %struct.flag*, %struct.flag** %9, align 8
  %71 = getelementptr inbounds %struct.flag, %struct.flag* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %131

74:                                               ; preds = %69
  %75 = load %struct.flag*, %struct.flag** %9, align 8
  %76 = getelementptr inbounds %struct.flag, %struct.flag* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @wcslen(i32* %77)
  store i64 %78, i64* %14, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %14, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %74
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.flag*, %struct.flag** %9, align 8
  %85 = getelementptr inbounds %struct.flag, %struct.flag* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %13, align 8
  %88 = call i64 @wmemcmp(i32* %83, i32* %86, i64 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load %struct.flag*, %struct.flag** %9, align 8
  %92 = getelementptr inbounds %struct.flag, %struct.flag* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %11, align 8
  %96 = load %struct.flag*, %struct.flag** %9, align 8
  %97 = getelementptr inbounds %struct.flag, %struct.flag* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %10, align 8
  br label %131

101:                                              ; preds = %82, %74
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* %14, align 8
  %104 = sub i64 %103, 2
  %105 = icmp eq i64 %102, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %101
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.flag*, %struct.flag** %9, align 8
  %109 = getelementptr inbounds %struct.flag, %struct.flag* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i64, i64* %13, align 8
  %113 = call i64 @wmemcmp(i32* %107, i32* %111, i64 %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %106
  %116 = load %struct.flag*, %struct.flag** %9, align 8
  %117 = getelementptr inbounds %struct.flag, %struct.flag* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %10, align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* %10, align 8
  %121 = load %struct.flag*, %struct.flag** %9, align 8
  %122 = getelementptr inbounds %struct.flag, %struct.flag* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %11, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %11, align 8
  br label %131

126:                                              ; preds = %106, %101
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.flag*, %struct.flag** %9, align 8
  %130 = getelementptr inbounds %struct.flag, %struct.flag* %129, i32 1
  store %struct.flag* %130, %struct.flag** %9, align 8
  br label %69

131:                                              ; preds = %115, %90, %69
  %132 = load %struct.flag*, %struct.flag** %9, align 8
  %133 = getelementptr inbounds %struct.flag, %struct.flag* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load i32*, i32** %12, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32*, i32** %7, align 8
  store i32* %140, i32** %12, align 8
  br label %141

141:                                              ; preds = %139, %136, %131
  %142 = load i32*, i32** %8, align 8
  store i32* %142, i32** %7, align 8
  br label %143

143:                                              ; preds = %157, %141
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 9
  br i1 %146, label %155, label %147

147:                                              ; preds = %143
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 32
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 44
  br label %155

155:                                              ; preds = %151, %147, %143
  %156 = phi i1 [ true, %147 ], [ true, %143 ], [ %154, %151 ]
  br i1 %156, label %157, label %160

157:                                              ; preds = %155
  %158 = load i32*, i32** %7, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %7, align 8
  br label %143

160:                                              ; preds = %155
  br label %34

161:                                              ; preds = %34
  %162 = load i64*, i64** %5, align 8
  %163 = icmp ne i64* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i64, i64* %10, align 8
  %166 = load i64*, i64** %5, align 8
  store i64 %165, i64* %166, align 8
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i64*, i64** %6, align 8
  %169 = icmp ne i64* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i64, i64* %11, align 8
  %172 = load i64*, i64** %6, align 8
  store i64 %171, i64* %172, align 8
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i32*, i32** %12, align 8
  ret i32* %174
}

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i64 @wmemcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
