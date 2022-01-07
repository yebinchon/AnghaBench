; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/ppi/extr_ppilcd.c_hd44780_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/ppi/extr_ppilcd.c_hd44780_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDWR = common dso_local global i32 0, align 4
@hd_fd = common dso_local global i32 0, align 4
@EX_OSFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"can't open '%s'\00", align 1
@hd_lines = common dso_local global i32 0, align 4
@hd_blink = common dso_local global i32 0, align 4
@hd_cursor = common dso_local global i32 0, align 4
@hd_font = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"hd44780: unknown option code '%c'\00", align 1
@PPIGCTRL = common dso_local global i32 0, align 4
@hd_cbits = common dso_local global i32 0, align 4
@EX_IOERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"ioctl PPIGCTRL failed (not a ppi device?)\00", align 1
@STROBE = common dso_local global i32 0, align 4
@SELECTIN = common dso_local global i32 0, align 4
@AUTOFEED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"static control bits 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @hd44780_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hd44780_prepare(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @O_RDWR, align 4
  %9 = call i32 @open(i8* %7, i32 %8, i32 0)
  store i32 %9, i32* @hd_fd, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @EX_OSFILE, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 (i32, i8*, ...) @err(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %11, %2
  br label %16

16:                                               ; preds = %41, %15
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  br i1 %25, label %26, label %42

26:                                               ; preds = %24
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %35 [
    i32 49, label %31
    i32 66, label %32
    i32 67, label %33
    i32 70, label %34
  ]

31:                                               ; preds = %26
  store i32 1, i32* @hd_lines, align 4
  br label %41

32:                                               ; preds = %26
  store i32 1, i32* @hd_blink, align 4
  br label %41

33:                                               ; preds = %26
  store i32 1, i32* @hd_cursor, align 4
  br label %41

34:                                               ; preds = %26
  store i32 1, i32* @hd_font, align 4
  br label %41

35:                                               ; preds = %26
  %36 = load i32, i32* @EX_USAGE, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @errx(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8 signext %39)
  br label %41

41:                                               ; preds = %35, %34, %33, %32, %31
  br label %16

42:                                               ; preds = %24
  %43 = load i32, i32* @hd_fd, align 4
  %44 = load i32, i32* @PPIGCTRL, align 4
  %45 = call i64 @ioctl(i32 %43, i32 %44, i32* @hd_cbits)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EX_IOERR, align 4
  %49 = call i32 (i32, i8*, ...) @err(i32 %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* @STROBE, align 4
  %52 = load i32, i32* @SELECTIN, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @AUTOFEED, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* @hd_cbits, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* @hd_cbits, align 4
  %59 = load i32, i32* @hd_cbits, align 4
  %60 = call i32 @debug(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @STROBE, align 4
  %62 = call i32 @hd_sctrl(i32 %61)
  %63 = call i32 @hd_sdata(i32 0)
  ret void
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @errx(i32, i8*, i8 signext) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @debug(i32, i8*, i32) #1

declare dso_local i32 @hd_sctrl(i32) #1

declare dso_local i32 @hd_sdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
