; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_symbol_init_language_specific.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_symbol_init_language_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.general_symbol_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@language_cplus = common dso_local global i64 0, align 8
@language_java = common dso_local global i64 0, align 8
@language_objc = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @symbol_init_language_specific(%struct.general_symbol_info* %0, i32 %1) #0 {
  %3 = alloca %struct.general_symbol_info*, align 8
  %4 = alloca i32, align 4
  store %struct.general_symbol_info* %0, %struct.general_symbol_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %7 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %9 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @language_cplus, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %2
  %15 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %16 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @language_java, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %23 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @language_objc, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %21, %14, %2
  %29 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %30 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %37

33:                                               ; preds = %21
  %34 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %35 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %34, i32 0, i32 1
  %36 = call i32 @memset(%struct.TYPE_4__* %35, i32 0, i32 8)
  br label %37

37:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
