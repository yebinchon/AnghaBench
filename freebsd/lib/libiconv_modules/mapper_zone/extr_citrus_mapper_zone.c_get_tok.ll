; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_zone/extr_citrus_mapper_zone.c_get_tok.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_zone/extr_citrus_mapper_zone.c_get_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._memstream = type { i32 }
%struct._parse_state = type { i32 }

@EOF = common dso_local global i32 0, align 4
@T_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._memstream*, %struct._parse_state*)* @get_tok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tok(%struct._memstream* %0, %struct._parse_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._memstream*, align 8
  %5 = alloca %struct._parse_state*, align 8
  %6 = alloca i32, align 4
  store %struct._memstream* %0, %struct._memstream** %4, align 8
  store %struct._parse_state* %1, %struct._parse_state** %5, align 8
  br label %7

7:                                                ; preds = %18, %2
  %8 = load %struct._memstream*, %struct._memstream** %4, align 8
  %9 = call i32 @_memstream_peek(%struct._memstream* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @EOF, align 4
  store i32 %13, i32* %3, align 4
  br label %49

14:                                               ; preds = %7
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @_bcs_isspace(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct._memstream*, %struct._memstream** %4, align 8
  %20 = call i32 @_memstream_getc(%struct._memstream* %19)
  br label %7

21:                                               ; preds = %14
  %22 = load %struct._parse_state*, %struct._parse_state** %5, align 8
  %23 = getelementptr inbounds %struct._parse_state, %struct._parse_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %47 [
    i32 129, label %25
    i32 128, label %36
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %35 [
    i32 58, label %27
    i32 45, label %27
    i32 47, label %27
    i32 48, label %31
    i32 49, label %31
    i32 50, label %31
    i32 51, label %31
    i32 52, label %31
    i32 53, label %31
    i32 54, label %31
    i32 55, label %31
    i32 56, label %31
    i32 57, label %31
  ]

27:                                               ; preds = %25, %25, %25
  %28 = load %struct._memstream*, %struct._memstream** %4, align 8
  %29 = call i32 @_memstream_getc(%struct._memstream* %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25, %25
  %32 = load %struct._memstream*, %struct._memstream** %4, align 8
  %33 = load %struct._parse_state*, %struct._parse_state** %5, align 8
  %34 = call i32 @get_imm(%struct._memstream* %32, %struct._parse_state* %33)
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %25
  br label %47

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %46 [
    i32 47, label %38
    i32 43, label %42
    i32 45, label %42
    i32 48, label %42
    i32 49, label %42
    i32 50, label %42
    i32 51, label %42
    i32 52, label %42
    i32 53, label %42
    i32 54, label %42
    i32 55, label %42
    i32 56, label %42
    i32 57, label %42
  ]

38:                                               ; preds = %36
  %39 = load %struct._memstream*, %struct._memstream** %4, align 8
  %40 = call i32 @_memstream_getc(%struct._memstream* %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %49

42:                                               ; preds = %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %36
  %43 = load %struct._memstream*, %struct._memstream** %4, align 8
  %44 = load %struct._parse_state*, %struct._parse_state** %5, align 8
  %45 = call i32 @get_imm(%struct._memstream* %43, %struct._parse_state* %44)
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %21, %46, %35
  %48 = load i32, i32* @T_ERR, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %42, %38, %31, %27, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @_memstream_peek(%struct._memstream*) #1

declare dso_local i64 @_bcs_isspace(i32) #1

declare dso_local i32 @_memstream_getc(%struct._memstream*) #1

declare dso_local i32 @get_imm(%struct._memstream*, %struct._parse_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
