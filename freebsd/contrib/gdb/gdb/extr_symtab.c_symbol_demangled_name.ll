; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_symbol_demangled_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_symbol_demangled_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.general_symbol_info = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@language_cplus = common dso_local global i64 0, align 8
@language_java = common dso_local global i64 0, align 8
@language_objc = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @symbol_demangled_name(%struct.general_symbol_info* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.general_symbol_info*, align 8
  store %struct.general_symbol_info* %0, %struct.general_symbol_info** %3, align 8
  %4 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %5 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @language_cplus, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %11 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @language_java, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %17 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @language_objc, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15, %9, %1
  %22 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %23 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %2, align 8
  br label %28

27:                                               ; preds = %15
  store i8* null, i8** %2, align 8
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
