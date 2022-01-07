; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb.c_hdb_next_enctype2key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb.c_hdb_next_enctype2key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@KRB5_PROG_ETYPE_NOSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"No next enctype %d for hdb-entry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdb_next_enctype2key(i32 %0, %struct.TYPE_9__* %1, i64 %2, %struct.TYPE_10__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__**, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %9, align 8
  %11 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 1
  br label %23

18:                                               ; preds = %4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi %struct.TYPE_10__* [ %17, %14 ], [ %22, %18 ]
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %10, align 8
  br label %25

25:                                               ; preds = %49, %23
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %35
  %37 = icmp ult %struct.TYPE_10__* %26, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %25
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %47 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %47, align 8
  store i32 0, i32* %5, align 4
  br label %59

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 1
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %10, align 8
  br label %25

52:                                               ; preds = %25
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @KRB5_PROG_ETYPE_NOSUPP, align 4
  %55 = load i64, i64* %8, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @krb5_set_error_message(i32 %53, i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @KRB5_PROG_ETYPE_NOSUPP, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %52, %45
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
