; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dttemplate.c_DtEmitDefinitionBlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dttemplate.c_DtEmitDefinitionBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [110 x i8] c"DefinitionBlock (\22\22, \22%4.4s\22, 2, \22Intel\22, \22_%4.4s_%.2X\22, 0x00000001)\0A{\0A    Method (%2.2s%.2X)\0A    {\0A    }\0A}\0A\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not write %4.4s to output file %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32)* @DtEmitDefinitionBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DtEmitDefinitionBlock(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = ptrtoint i32* %10 to i32
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13, i32 %14, i8* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %23)
  br label %25

25:                                               ; preds = %20, %4
  %26 = load i32, i32* %9, align 4
  ret i32 %26
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
