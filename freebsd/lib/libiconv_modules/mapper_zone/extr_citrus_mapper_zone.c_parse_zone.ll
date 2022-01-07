; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_zone/extr_citrus_mapper_zone.c_parse_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_zone/extr_citrus_mapper_zone.c_parse_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._memstream = type { i32 }
%struct._parse_state = type { i64 }
%struct._zone = type { i64, i64 }

@T_IMM = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._memstream*, %struct._parse_state*, %struct._zone*)* @parse_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_zone(%struct._memstream* %0, %struct._parse_state* %1, %struct._zone* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._memstream*, align 8
  %6 = alloca %struct._parse_state*, align 8
  %7 = alloca %struct._zone*, align 8
  store %struct._memstream* %0, %struct._memstream** %5, align 8
  store %struct._parse_state* %1, %struct._parse_state** %6, align 8
  store %struct._zone* %2, %struct._zone** %7, align 8
  %8 = load %struct._memstream*, %struct._memstream** %5, align 8
  %9 = load %struct._parse_state*, %struct._parse_state** %6, align 8
  %10 = call signext i8 @get_tok(%struct._memstream* %8, %struct._parse_state* %9)
  %11 = sext i8 %10 to i32
  %12 = load i8, i8* @T_IMM, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %52

16:                                               ; preds = %3
  %17 = load %struct._parse_state*, %struct._parse_state** %6, align 8
  %18 = getelementptr inbounds %struct._parse_state, %struct._parse_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct._zone*, %struct._zone** %7, align 8
  %21 = getelementptr inbounds %struct._zone, %struct._zone* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct._memstream*, %struct._memstream** %5, align 8
  %23 = load %struct._parse_state*, %struct._parse_state** %6, align 8
  %24 = call signext i8 @get_tok(%struct._memstream* %22, %struct._parse_state* %23)
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 45
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %52

28:                                               ; preds = %16
  %29 = load %struct._memstream*, %struct._memstream** %5, align 8
  %30 = load %struct._parse_state*, %struct._parse_state** %6, align 8
  %31 = call signext i8 @get_tok(%struct._memstream* %29, %struct._parse_state* %30)
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @T_IMM, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %52

37:                                               ; preds = %28
  %38 = load %struct._parse_state*, %struct._parse_state** %6, align 8
  %39 = getelementptr inbounds %struct._parse_state, %struct._parse_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct._zone*, %struct._zone** %7, align 8
  %42 = getelementptr inbounds %struct._zone, %struct._zone* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct._zone*, %struct._zone** %7, align 8
  %44 = getelementptr inbounds %struct._zone, %struct._zone* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct._zone*, %struct._zone** %7, align 8
  %47 = getelementptr inbounds %struct._zone, %struct._zone* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %52

51:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %50, %36, %27, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local signext i8 @get_tok(%struct._memstream*, %struct._parse_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
