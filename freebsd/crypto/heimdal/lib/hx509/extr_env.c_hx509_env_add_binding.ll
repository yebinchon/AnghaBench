; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_env.c_hx509_env_add_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_env.c_hx509_env_add_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_7__, i32*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@env_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_env_add_binding(i32 %0, %struct.TYPE_8__** %1, i8* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %12 = call %struct.TYPE_8__* @malloc(i32 32)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %10, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = call i32 @hx509_set_error_string(i32 %16, i32 0, i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %5, align 4
  br label %66

20:                                               ; preds = %4
  %21 = load i32, i32* @env_list, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32* @strdup(i8* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = call i32 @free(%struct.TYPE_8__* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %5, align 4
  br label %66

38:                                               ; preds = %20
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %42, align 8
  %43 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = icmp ne %struct.TYPE_8__* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %38
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %11, align 8
  br label %49

49:                                               ; preds = %54, %46
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = icmp ne %struct.TYPE_8__* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %11, align 8
  br label %49

58:                                               ; preds = %49
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %61, align 8
  br label %65

62:                                               ; preds = %38
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %64 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %64, align 8
  br label %65

65:                                               ; preds = %62, %58
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %34, %15
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
