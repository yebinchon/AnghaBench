; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_libmap.c_lm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_libmap.c_lm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"lm_init(\22%s\22)\00", align 1
@lmp_head = common dso_local global i32 0, align 4
@ld_path_libmap_conf = common dso_local global i32 0, align 4
@lm_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lm_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @dbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = call i32 @TAILQ_INIT(i32* @lmp_head)
  %7 = load i32, i32* @ld_path_libmap_conf, align 4
  %8 = call i32 @lmc_parse_file(i32 %7)
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %42

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i8* @xstrdup(i8* %12)
  store i8* %13, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  store i8* %14, i8** %3, align 8
  br label %15

15:                                               ; preds = %28, %11
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %27 [
    i32 61, label %23
    i32 44, label %25
  ]

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  store i8 32, i8* %24, align 1
  br label %27

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  store i8 10, i8* %26, align 1
  br label %27

27:                                               ; preds = %19, %25, %23
  br label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  br label %15

31:                                               ; preds = %15
  %32 = load i8*, i8** %2, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @lmc_parse(i8* %32, i32 %38)
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @free(i8* %40)
  br label %42

42:                                               ; preds = %31, %1
  %43 = load i64, i64* @lm_count, align 8
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  ret i32 %45
}

declare dso_local i32 @dbg(i8*, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @lmc_parse_file(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @lmc_parse(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
