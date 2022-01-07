; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_symvalcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_symvalcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.symsort_thunk = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@STB_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @symvalcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symvalcmp(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.symsort_thunk*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.symsort_thunk*
  store %struct.symsort_thunk* %24, %struct.symsort_thunk** %10, align 8
  %25 = load %struct.symsort_thunk*, %struct.symsort_thunk** %10, align 8
  %26 = getelementptr inbounds %struct.symsort_thunk, %struct.symsort_thunk* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @gelf_getsym(i32 %29, i32 %30, %struct.TYPE_5__* %8)
  %32 = load %struct.symsort_thunk*, %struct.symsort_thunk** %10, align 8
  %33 = getelementptr inbounds %struct.symsort_thunk, %struct.symsort_thunk* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @gelf_getsym(i32 %36, i32 %37, %struct.TYPE_5__* %9)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %40, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %46, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 -1, i32 1
  store i32 %51, i32* %4, align 4
  br label %154

52:                                               ; preds = %3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @GELF_ST_BIND(i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @GELF_ST_BIND(i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %52
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @STB_LOCAL, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @STB_LOCAL, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %154

71:                                               ; preds = %66, %62
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* @STB_LOCAL, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @STB_LOCAL, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 1, i32* %4, align 4
  br label %154

80:                                               ; preds = %75, %71
  br label %81

81:                                               ; preds = %80, %52
  %82 = load %struct.symsort_thunk*, %struct.symsort_thunk** %10, align 8
  %83 = getelementptr inbounds %struct.symsort_thunk, %struct.symsort_thunk* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.symsort_thunk*, %struct.symsort_thunk** %10, align 8
  %86 = getelementptr inbounds %struct.symsort_thunk, %struct.symsort_thunk* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @elf_strptr(i32 %84, i32 %89, i32 %91)
  store i8* %92, i8** %11, align 8
  %93 = load %struct.symsort_thunk*, %struct.symsort_thunk** %10, align 8
  %94 = getelementptr inbounds %struct.symsort_thunk, %struct.symsort_thunk* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.symsort_thunk*, %struct.symsort_thunk** %10, align 8
  %97 = getelementptr inbounds %struct.symsort_thunk, %struct.symsort_thunk* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @elf_strptr(i32 %95, i32 %100, i32 %102)
  store i8* %103, i8** %12, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %153

106:                                              ; preds = %81
  %107 = load i8*, i8** %12, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %153

109:                                              ; preds = %106
  %110 = load i8*, i8** %11, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 36
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 -1, i32* %4, align 4
  br label %154

115:                                              ; preds = %109
  %116 = load i8*, i8** %12, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 36
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 1, i32* %4, align 4
  br label %154

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %135, %121
  %123 = load i8*, i8** %11, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 95
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i8*, i8** %12, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 95
  br label %132

132:                                              ; preds = %127, %122
  %133 = phi i1 [ false, %122 ], [ %131, %127 ]
  br i1 %133, label %134, label %140

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134
  %136 = load i8*, i8** %11, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %11, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %12, align 8
  br label %122

140:                                              ; preds = %132
  %141 = load i8*, i8** %11, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 95
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 -1, i32* %4, align 4
  br label %154

146:                                              ; preds = %140
  %147 = load i8*, i8** %12, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 95
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 1, i32* %4, align 4
  br label %154

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152, %106, %81
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %151, %145, %120, %114, %79, %70, %44
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @gelf_getsym(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @GELF_ST_BIND(i32) #1

declare dso_local i8* @elf_strptr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
