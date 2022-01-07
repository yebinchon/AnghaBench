; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_set_keys.c__kadm5_set_keys3.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_set_keys.c__kadm5_set_keys3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32*, i32, i32* }

@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_kadm5_set_keys3(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = zext i32 %15 to i64
  %17 = mul i64 %16, 24
  %18 = trunc i64 %17 to i32
  %19 = call %struct.TYPE_15__* @malloc(i32 %18)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %13, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %21 = icmp eq %struct.TYPE_15__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i64, i64* @ENOMEM, align 8
  store i64 %26, i64* %5, align 8
  br label %105

27:                                               ; preds = %22, %4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @_kadm5_init_keys(%struct.TYPE_15__* %28, i32 %29)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %63, %27
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %31
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = call i64 @krb5_copy_keyblock_contents(i32 %43, i32* %47, i32* %52)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %35
  br label %97

57:                                               ; preds = %35
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %31

66:                                               ; preds = %31
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = call i32 @_kadm5_free_keys(i32 %69, i32 %73, %struct.TYPE_15__* %77)
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %86, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %91 = call i32 @hdb_entry_set_pw_change_time(i32 %89, %struct.TYPE_14__* %90, i32 0)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = call i32 @hdb_entry_clear_password(i32 %94, %struct.TYPE_14__* %95)
  store i64 0, i64* %5, align 8
  br label %105

97:                                               ; preds = %56
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %103 = call i32 @_kadm5_free_keys(i32 %100, i32 %101, %struct.TYPE_15__* %102)
  %104 = load i64, i64* %10, align 8
  store i64 %104, i64* %5, align 8
  br label %105

105:                                              ; preds = %97, %66, %25
  %106 = load i64, i64* %5, align 8
  ret i64 %106
}

declare dso_local %struct.TYPE_15__* @malloc(i32) #1

declare dso_local i32 @_kadm5_init_keys(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @krb5_copy_keyblock_contents(i32, i32*, i32*) #1

declare dso_local i32 @_kadm5_free_keys(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @hdb_entry_set_pw_change_time(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @hdb_entry_clear_password(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
