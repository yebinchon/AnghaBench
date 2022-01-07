; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_symbol_find_demangled_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_symbol_find_demangled_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.general_symbol_info = type { i64 }

@language_unknown = common dso_local global i64 0, align 8
@language_auto = common dso_local global i64 0, align 8
@language_objc = common dso_local global i64 0, align 8
@language_cplus = common dso_local global i64 0, align 8
@DMGL_PARAMS = common dso_local global i32 0, align 4
@DMGL_ANSI = common dso_local global i32 0, align 4
@language_java = common dso_local global i64 0, align 8
@DMGL_JAVA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.general_symbol_info*, i8*)* @symbol_find_demangled_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @symbol_find_demangled_name(%struct.general_symbol_info* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.general_symbol_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.general_symbol_info* %0, %struct.general_symbol_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.general_symbol_info*, %struct.general_symbol_info** %4, align 8
  %8 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @language_unknown, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64, i64* @language_auto, align 8
  %14 = load %struct.general_symbol_info*, %struct.general_symbol_info** %4, align 8
  %15 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.general_symbol_info*, %struct.general_symbol_info** %4, align 8
  %18 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @language_objc, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.general_symbol_info*, %struct.general_symbol_info** %4, align 8
  %24 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @language_auto, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22, %16
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @objc_demangle(i8* %29, i32 0)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i64, i64* @language_objc, align 8
  %35 = load %struct.general_symbol_info*, %struct.general_symbol_info** %4, align 8
  %36 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i8*, i8** %6, align 8
  store i8* %37, i8** %3, align 8
  br label %88

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.general_symbol_info*, %struct.general_symbol_info** %4, align 8
  %41 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @language_cplus, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.general_symbol_info*, %struct.general_symbol_info** %4, align 8
  %47 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @language_auto, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %45, %39
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* @DMGL_PARAMS, align 4
  %54 = load i32, i32* @DMGL_ANSI, align 4
  %55 = or i32 %53, %54
  %56 = call i8* @cplus_demangle(i8* %52, i32 %55)
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i64, i64* @language_cplus, align 8
  %61 = load %struct.general_symbol_info*, %struct.general_symbol_info** %4, align 8
  %62 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i8*, i8** %6, align 8
  store i8* %63, i8** %3, align 8
  br label %88

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %45
  %66 = load %struct.general_symbol_info*, %struct.general_symbol_info** %4, align 8
  %67 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @language_java, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* @DMGL_PARAMS, align 4
  %74 = load i32, i32* @DMGL_ANSI, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @DMGL_JAVA, align 4
  %77 = or i32 %75, %76
  %78 = call i8* @cplus_demangle(i8* %72, i32 %77)
  store i8* %78, i8** %6, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = load i64, i64* @language_java, align 8
  %83 = load %struct.general_symbol_info*, %struct.general_symbol_info** %4, align 8
  %84 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load i8*, i8** %6, align 8
  store i8* %85, i8** %3, align 8
  br label %88

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %65
  store i8* null, i8** %3, align 8
  br label %88

88:                                               ; preds = %87, %81, %59, %33
  %89 = load i8*, i8** %3, align 8
  ret i8* %89
}

declare dso_local i8* @objc_demangle(i8*, i32) #1

declare dso_local i8* @cplus_demangle(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
