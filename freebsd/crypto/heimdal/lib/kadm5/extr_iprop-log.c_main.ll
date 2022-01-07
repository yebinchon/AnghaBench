; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_iprop-log.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_iprop-log.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"krb5_init_context failed with: %d\0A\00", align 1
@commands = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unrecognized command: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @setprogname(i8* %10)
  %12 = load i32, i32* @args, align 4
  %13 = load i32, i32* @num_args, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i64 @getarg(i32 %12, i32 %13, i32 %14, i8** %15, i32* %6)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @usage(i32 1)
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i64, i64* @help_flag, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @usage(i32 0)
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i64, i64* @version_flag, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i32 @print_version(i32* null)
  %30 = call i32 @exit(i32 0) #3
  unreachable

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  store i8** %38, i8*** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 @usage(i32 1)
  br label %43

43:                                               ; preds = %41, %31
  %44 = call i32 @krb5_init_context(i32* @context)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* @commands, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i8**, i8*** %5, align 8
  %54 = call i32 @sl_command(i32 %51, i32 %52, i8** %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %57, %50
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i64 @getarg(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @sl_command(i32, i32, i8**) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
