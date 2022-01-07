; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parser_register_macro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parser_register_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }
%struct.ucl_macro = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@hh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucl_parser_register_macro(%struct.ucl_parser* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.ucl_parser*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ucl_macro*, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  br label %48

16:                                               ; preds = %12
  %17 = call %struct.ucl_macro* @UCL_ALLOC(i32 24)
  store %struct.ucl_macro* %17, %struct.ucl_macro** %9, align 8
  %18 = load %struct.ucl_macro*, %struct.ucl_macro** %9, align 8
  %19 = icmp eq %struct.ucl_macro* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %48

21:                                               ; preds = %16
  %22 = load %struct.ucl_macro*, %struct.ucl_macro** %9, align 8
  %23 = call i32 @memset(%struct.ucl_macro* %22, i32 0, i32 24)
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.ucl_macro*, %struct.ucl_macro** %9, align 8
  %26 = getelementptr inbounds %struct.ucl_macro, %struct.ucl_macro* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* %24, i32** %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strdup(i8* %28)
  %30 = load %struct.ucl_macro*, %struct.ucl_macro** %9, align 8
  %31 = getelementptr inbounds %struct.ucl_macro, %struct.ucl_macro* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.ucl_macro*, %struct.ucl_macro** %9, align 8
  %34 = getelementptr inbounds %struct.ucl_macro, %struct.ucl_macro* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @hh, align 4
  %36 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %37 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ucl_macro*, %struct.ucl_macro** %9, align 8
  %40 = getelementptr inbounds %struct.ucl_macro, %struct.ucl_macro* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ucl_macro*, %struct.ucl_macro** %9, align 8
  %43 = getelementptr inbounds %struct.ucl_macro, %struct.ucl_macro* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strlen(i32 %44)
  %46 = load %struct.ucl_macro*, %struct.ucl_macro** %9, align 8
  %47 = call i32 @HASH_ADD_KEYPTR(i32 %35, i32 %38, i32 %41, i32 %45, %struct.ucl_macro* %46)
  br label %48

48:                                               ; preds = %21, %20, %15
  ret void
}

declare dso_local %struct.ucl_macro* @UCL_ALLOC(i32) #1

declare dso_local i32 @memset(%struct.ucl_macro*, i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @HASH_ADD_KEYPTR(i32, i32, i32, i32, %struct.ucl_macro*) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
