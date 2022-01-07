; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_parse_entry.c_postprocess_terminfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_parse_entry.c_postprocess_terminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@box_chars_1 = common dso_local global i32* null, align 8
@MAX_TERMCAP_LENGTH = common dso_local global i32 0, align 4
@acs_chars = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"acsc string synthesized from AIX capabilities\00", align 1
@ABSENT_STRING = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @postprocess_terminfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postprocess_terminfo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** @box_chars_1, align 8
  %7 = call i64 @PRESENT(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %71

9:                                                ; preds = %1
  %10 = load i32, i32* @MAX_TERMCAP_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = trunc i64 %11 to i32
  %15 = call i32 @_nc_str_init(i32* %5, i8* %13, i32 %14)
  %16 = load i32, i32* @acs_chars, align 4
  %17 = call i32 @_nc_safe_strcat(i32* %5, i32 %16)
  %18 = load i32*, i32** @box_chars_1, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @append_acs0(i32* %5, i8 signext 108, i32 %20)
  %22 = load i32*, i32** @box_chars_1, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @append_acs0(i32* %5, i8 signext 113, i32 %24)
  %26 = load i32*, i32** @box_chars_1, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @append_acs0(i32* %5, i8 signext 107, i32 %28)
  %30 = load i32*, i32** @box_chars_1, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @append_acs0(i32* %5, i8 signext 120, i32 %32)
  %34 = load i32*, i32** @box_chars_1, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @append_acs0(i32* %5, i8 signext 106, i32 %36)
  %38 = load i32*, i32** @box_chars_1, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @append_acs0(i32* %5, i8 signext 109, i32 %40)
  %42 = load i32*, i32** @box_chars_1, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @append_acs0(i32* %5, i8 signext 119, i32 %44)
  %46 = load i32*, i32** @box_chars_1, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @append_acs0(i32* %5, i8 signext 117, i32 %48)
  %50 = load i32*, i32** @box_chars_1, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @append_acs0(i32* %5, i8 signext 118, i32 %52)
  %54 = load i32*, i32** @box_chars_1, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 9
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @append_acs0(i32* %5, i8 signext 116, i32 %56)
  %58 = load i32*, i32** @box_chars_1, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 10
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @append_acs0(i32* %5, i8 signext 110, i32 %60)
  %62 = getelementptr inbounds i8, i8* %13, i64 0
  %63 = load i8, i8* %62, align 16
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %9
  %66 = call i32 @_nc_save_str(i8* %13)
  store i32 %66, i32* @acs_chars, align 4
  %67 = call i32 @_nc_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %68 = load i32*, i32** @ABSENT_STRING, align 8
  store i32* %68, i32** @box_chars_1, align 8
  br label %69

69:                                               ; preds = %65, %9
  %70 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %70)
  br label %71

71:                                               ; preds = %69, %1
  ret void
}

declare dso_local i64 @PRESENT(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @_nc_str_init(i32*, i8*, i32) #1

declare dso_local i32 @_nc_safe_strcat(i32*, i32) #1

declare dso_local i32 @append_acs0(i32*, i8 signext, i32) #1

declare dso_local i32 @_nc_save_str(i8*) #1

declare dso_local i32 @_nc_warning(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
