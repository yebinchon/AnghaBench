; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_openssl.c_list_missing_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_openssl.c_list_missing_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32* }

@functions = common dso_local global %struct.TYPE_5__* null, align 8
@bio_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@dgst_main = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s *\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @list_missing_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_missing_help() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @functions, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %1, align 8
  br label %4

4:                                                ; preds = %53, %0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %56

9:                                                ; preds = %4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %2, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %35, %14
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32, i32* @bio_out, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 (i32, i8*, i32*, ...) @BIO_printf(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %29, i32* %32)
  br label %34

34:                                               ; preds = %25, %20
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 1
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %2, align 8
  br label %15

38:                                               ; preds = %15
  br label %52

39:                                               ; preds = %9
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @dgst_main, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* @bio_out, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 (i32, i8*, i32*, ...) @BIO_printf(i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %49)
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 1
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %1, align 8
  br label %4

56:                                               ; preds = %4
  ret void
}

declare dso_local i32 @BIO_printf(i32, i8*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
