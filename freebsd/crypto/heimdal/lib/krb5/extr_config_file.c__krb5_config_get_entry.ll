; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_config_file.c__krb5_config_get_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_config_file.c__krb5_config_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_6__* }

@krb5_config_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @_krb5_config_get_entry(%struct.TYPE_6__** %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__**, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__** %9, %struct.TYPE_6__*** %8, align 8
  br label %10

10:                                               ; preds = %37, %3
  %11 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @krb5_config_list, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @strcmp(i8* %26, i32* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %4, align 8
  br label %71

36:                                               ; preds = %25, %18, %14
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store %struct.TYPE_6__** %40, %struct.TYPE_6__*** %8, align 8
  br label %10

41:                                               ; preds = %10
  %42 = call %struct.TYPE_6__* @calloc(i32 1, i32 24)
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %43, align 8
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = icmp eq %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %71

48:                                               ; preds = %41
  %49 = load i8*, i8** %6, align 8
  %50 = call i32* @strdup(i8* %49)
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32* %50, i32** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call i32 @free(%struct.TYPE_6__* %65)
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %67, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %71

68:                                               ; preds = %48
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %4, align 8
  br label %71

71:                                               ; preds = %68, %63, %47, %33
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %72
}

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
