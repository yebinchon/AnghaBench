; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_zone/extr_citrus_mapper_zone.c_get_imm.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_zone/extr_citrus_mapper_zone.c_get_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._memstream = type { i32 }
%struct._parse_state = type { i64 }

@BUFSIZE = common dso_local global i32 0, align 4
@T_ERR = common dso_local global i32 0, align 4
@T_IMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._memstream*, %struct._parse_state*)* @get_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_imm(%struct._memstream* %0, %struct._parse_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._memstream*, align 8
  %5 = alloca %struct._parse_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct._memstream* %0, %struct._memstream** %4, align 8
  store %struct._parse_state* %1, %struct._parse_state** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @BUFSIZE, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %67, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @BUFSIZE, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %37, %22
  %24 = load %struct._memstream*, %struct._memstream** %4, align 8
  %25 = call i32 @_memstream_peek(%struct._memstream* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 43
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct._memstream*, %struct._memstream** %4, align 8
  %40 = call signext i8 @_memstream_getc(%struct._memstream* %39)
  br label %23

41:                                               ; preds = %34, %28
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @_bcs_isdigit(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %70

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46
  br label %61

48:                                               ; preds = %23
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @_bcs_isxdigit(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 120
  br i1 %57, label %59, label %58

58:                                               ; preds = %55, %52
  br label %70

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %48
  br label %61

61:                                               ; preds = %60, %47
  %62 = load %struct._memstream*, %struct._memstream** %4, align 8
  %63 = call signext i8 @_memstream_getc(%struct._memstream* %62)
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %17, i64 %65
  store i8 %63, i8* %66, align 1
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %18

70:                                               ; preds = %58, %45, %18
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %17, i64 %72
  store i8 0, i8* %73, align 1
  %74 = call i64 @strtoul(i8* %17, i8** %11, i32 0)
  %75 = load %struct._parse_state*, %struct._parse_state** %5, align 8
  %76 = getelementptr inbounds %struct._parse_state, %struct._parse_state* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = ptrtoint i8* %17 to i64
  %80 = sub i64 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ne i64 %80, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %70
  %85 = load i32, i32* @T_ERR, align 4
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %98

86:                                               ; preds = %70
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 45
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load %struct._parse_state*, %struct._parse_state** %5, align 8
  %91 = getelementptr inbounds %struct._parse_state, %struct._parse_state* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 0, %92
  %94 = load %struct._parse_state*, %struct._parse_state** %5, align 8
  %95 = getelementptr inbounds %struct._parse_state, %struct._parse_state* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %89, %86
  %97 = load i32, i32* @T_IMM, align 4
  store i32 %97, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %98

98:                                               ; preds = %96, %84
  %99 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_memstream_peek(%struct._memstream*) #2

declare dso_local signext i8 @_memstream_getc(%struct._memstream*) #2

declare dso_local i32 @_bcs_isdigit(i32) #2

declare dso_local i32 @_bcs_isxdigit(i32) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
