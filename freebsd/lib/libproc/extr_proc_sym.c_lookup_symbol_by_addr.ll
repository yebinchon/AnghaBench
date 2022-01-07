; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_lookup_symbol_by_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_lookup_symbol_by_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i32, i32, i32*, i32* }
%struct.TYPE_4__ = type { i64, i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.symtab*, i64, i8**, %struct.TYPE_4__*)* @lookup_symbol_by_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_symbol_by_addr(i32* %0, %struct.symtab* %1, i64 %2, i8** %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.symtab*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.symtab* %1, %struct.symtab** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  %19 = load %struct.symtab*, %struct.symtab** %8, align 8
  %20 = getelementptr inbounds %struct.symtab, %struct.symtab* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOENT, align 4
  store i32 %24, i32* %6, align 4
  br label %146

25:                                               ; preds = %5
  %26 = load %struct.symtab*, %struct.symtab** %8, align 8
  %27 = getelementptr inbounds %struct.symtab, %struct.symtab* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %13, align 8
  store i32 0, i32* %16, align 4
  %29 = load %struct.symtab*, %struct.symtab** %8, align 8
  %30 = getelementptr inbounds %struct.symtab, %struct.symtab* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %17, align 4
  br label %33

33:                                               ; preds = %75, %25
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %33
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %16, align 4
  %40 = add nsw i32 %38, %39
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %18, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = load %struct.symtab*, %struct.symtab** %8, align 8
  %44 = getelementptr inbounds %struct.symtab, %struct.symtab* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %18, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @gelf_getsym(i32* %42, i32 %49, %struct.TYPE_4__* %12)
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp uge i64 %51, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %37
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %58, %60
  %62 = icmp ult i64 %56, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %76

64:                                               ; preds = %55, %37
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %18, align 4
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %17, align 4
  br label %75

72:                                               ; preds = %64
  %73 = load i32, i32* %18, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %72, %69
  br label %33

76:                                               ; preds = %63, %33
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @ENOENT, align 4
  store i32 %81, i32* %6, align 4
  br label %146

82:                                               ; preds = %76
  %83 = load i32, i32* %18, align 4
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %114, %82
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.symtab*, %struct.symtab** %8, align 8
  %87 = getelementptr inbounds %struct.symtab, %struct.symtab* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %84
  %91 = load i32*, i32** %13, align 8
  %92 = load %struct.symtab*, %struct.symtab** %8, align 8
  %93 = getelementptr inbounds %struct.symtab, %struct.symtab* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @gelf_getsym(i32* %91, i32 %98, %struct.TYPE_4__* %12)
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ult i64 %100, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %90
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %107, %109
  %111 = icmp uge i64 %105, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104, %90
  br label %117

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %84

117:                                              ; preds = %112, %84
  %118 = load i32*, i32** %13, align 8
  %119 = load %struct.symtab*, %struct.symtab** %8, align 8
  %120 = getelementptr inbounds %struct.symtab, %struct.symtab* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %128 = call i32 @gelf_getsym(i32* %118, i32 %126, %struct.TYPE_4__* %127)
  %129 = load i32*, i32** %7, align 8
  %130 = load %struct.symtab*, %struct.symtab** %8, align 8
  %131 = getelementptr inbounds %struct.symtab, %struct.symtab* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i8* @elf_strptr(i32* %129, i32 %132, i32 %135)
  store i8* %136, i8** %14, align 8
  %137 = load i8*, i8** %14, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %117
  %140 = load i8**, i8*** %10, align 8
  %141 = icmp ne i8** %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i8*, i8** %14, align 8
  %144 = load i8**, i8*** %10, align 8
  store i8* %143, i8** %144, align 8
  br label %145

145:                                              ; preds = %142, %139, %117
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %145, %80, %23
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local i32 @gelf_getsym(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i8* @elf_strptr(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
