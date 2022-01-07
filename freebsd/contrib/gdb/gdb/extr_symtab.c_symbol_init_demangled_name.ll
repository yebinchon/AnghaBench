; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_symbol_init_demangled_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_symbol_init_demangled_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.general_symbol_info = type { i8*, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.obstack = type { i32 }

@language_cplus = common dso_local global i64 0, align 8
@language_java = common dso_local global i64 0, align 8
@language_objc = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @symbol_init_demangled_name(%struct.general_symbol_info* %0, %struct.obstack* %1) #0 {
  %3 = alloca %struct.general_symbol_info*, align 8
  %4 = alloca %struct.obstack*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.general_symbol_info* %0, %struct.general_symbol_info** %3, align 8
  store %struct.obstack* %1, %struct.obstack** %4, align 8
  %7 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %8 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @symbol_find_demangled_name(%struct.general_symbol_info* %10, i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %14 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @language_cplus, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %2
  %19 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %20 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @language_java, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %26 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @language_objc, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %24, %18, %2
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = load %struct.obstack*, %struct.obstack** %4, align 8
  %38 = call i32* @obsavestring(i8* %34, i32 %36, %struct.obstack* %37)
  %39 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %40 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32* %38, i32** %42, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @xfree(i8* %43)
  br label %50

45:                                               ; preds = %30
  %46 = load %struct.general_symbol_info*, %struct.general_symbol_info** %3, align 8
  %47 = getelementptr inbounds %struct.general_symbol_info, %struct.general_symbol_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %45, %33
  br label %58

51:                                               ; preds = %24
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @xfree(i8* %55)
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %50
  ret void
}

declare dso_local i8* @symbol_find_demangled_name(%struct.general_symbol_info*, i8*) #1

declare dso_local i32* @obsavestring(i8*, i32, %struct.obstack*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
