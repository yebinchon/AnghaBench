; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_private.c__kvm_read_core_phdrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_private.c__kvm_read_core_phdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64*, i64 }
%struct.TYPE_9__ = type { i64, i64 }

@ELF_C_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ELF_K_ELF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid core\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@ET_CORE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to allocate phdrs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_kvm_read_core_phdrs(%struct.TYPE_8__* %0, i64* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32** %2, i32*** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ELF_C_READ, align 4
  %17 = call i32* @elf_begin(i32 %15, i32 %16, i32* null)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @elf_errmsg(i32 0)
  %26 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %21, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 -1, i32* %4, align 4
  br label %149

27:                                               ; preds = %3
  %28 = load i32*, i32** %10, align 8
  %29 = call i64 @elf_kind(i32* %28)
  %30 = load i64, i64* @ELF_K_ELF, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %33, i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %146

38:                                               ; preds = %27
  %39 = load i32*, i32** %10, align 8
  %40 = call i64 @gelf_getclass(i32* %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @EI_CLASS, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %40, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %50, i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %146

55:                                               ; preds = %38
  %56 = load i32*, i32** %10, align 8
  %57 = call i32* @gelf_getehdr(i32* %56, %struct.TYPE_9__* %8)
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @elf_errmsg(i32 0)
  %65 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %60, i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %146

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ET_CORE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %72, i32 %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %146

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %79, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %86, i32 %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %146

91:                                               ; preds = %77
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @elf_getphdrnum(i32* %92, i64* %12)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @elf_errmsg(i32 0)
  %101 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %96, i32 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %146

102:                                              ; preds = %91
  %103 = load i64, i64* %12, align 8
  %104 = call i32* @calloc(i64 %103, i32 4)
  store i32* %104, i32** %9, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %108, i32 %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %146

113:                                              ; preds = %102
  store i64 0, i64* %11, align 8
  br label %114

114:                                              ; preds = %136, %113
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %12, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %114
  %119 = load i32*, i32** %10, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = call i32* @gelf_getphdr(i32* %119, i64 %120, i32* %123)
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %118
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @free(i32* %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @elf_errmsg(i32 0)
  %134 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %129, i32 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %133)
  br label %146

135:                                              ; preds = %118
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %11, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %11, align 8
  br label %114

139:                                              ; preds = %114
  %140 = load i32*, i32** %10, align 8
  %141 = call i32 @elf_end(i32* %140)
  %142 = load i64, i64* %12, align 8
  %143 = load i64*, i64** %6, align 8
  store i64 %142, i64* %143, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = load i32**, i32*** %7, align 8
  store i32* %144, i32** %145, align 8
  store i32 0, i32* %4, align 4
  br label %149

146:                                              ; preds = %126, %107, %95, %85, %71, %59, %49, %32
  %147 = load i32*, i32** %10, align 8
  %148 = call i32 @elf_end(i32* %147)
  store i32 -1, i32* %4, align 4
  br label %149

149:                                              ; preds = %146, %139, %20
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i64 @elf_kind(i32*) #1

declare dso_local i64 @gelf_getclass(i32*) #1

declare dso_local i32* @gelf_getehdr(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @elf_getphdrnum(i32*, i64*) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32* @gelf_getphdr(i32*, i64, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @elf_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
