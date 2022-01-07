; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_dump.c_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_dump.c_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_options = type { i64 }
%struct.TYPE_6__ = type { i32 (i32, %struct.TYPE_6__*)*, i64 (i32, %struct.TYPE_6__*, i32, i32)* }

@local_flag = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"dump is only available in local (-l) mode\00", align 1
@kadm_handle = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"open: %s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"hdb_open\00", align 1
@HDB_F_DECRYPT = common dso_local global i32 0, align 4
@hdb_print_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump(%struct.dump_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dump_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.dump_options* %0, %struct.dump_options** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  %11 = load i32, i32* @local_flag, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @context, align 4
  %15 = call i32 @krb5_warnx(i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %85

16:                                               ; preds = %3
  %17 = load i32, i32* @kadm_handle, align 4
  %18 = call %struct.TYPE_6__* @_kadm5_s_get_db(i32 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32*, i32** @stdout, align 8
  store i32* %22, i32** %9, align 8
  br label %28

23:                                               ; preds = %16
  %24 = load i8**, i8*** %7, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %9, align 8
  br label %28

28:                                               ; preds = %23, %21
  %29 = load i32*, i32** %9, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* @context, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = sext i32 %33 to i64
  %35 = load i8**, i8*** %7, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %32, i64 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %74

39:                                               ; preds = %28
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64 (i32, %struct.TYPE_6__*, i32, i32)*, i64 (i32, %struct.TYPE_6__*, i32, i32)** %41, align 8
  %43 = load i32, i32* @context, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = load i32, i32* @O_RDONLY, align 4
  %46 = call i64 %42(i32 %43, %struct.TYPE_6__* %44, i32 %45, i32 384)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, i32* @context, align 4
  %51 = load i64, i64* %8, align 8
  %52 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %50, i64 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %74

53:                                               ; preds = %39
  %54 = load i32, i32* @context, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = load %struct.dump_options*, %struct.dump_options** %5, align 8
  %57 = getelementptr inbounds %struct.dump_options, %struct.dump_options* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @HDB_F_DECRYPT, align 4
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  %65 = load i32, i32* @hdb_print_entry, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @hdb_foreach(i32 %54, %struct.TYPE_6__* %55, i32 %64, i32 %65, i32* %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** %69, align 8
  %71 = load i32, i32* @context, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = call i32 %70(i32 %71, %struct.TYPE_6__* %72)
  br label %74

74:                                               ; preds = %63, %49, %31
  %75 = load i32*, i32** %9, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32*, i32** %9, align 8
  %79 = load i32*, i32** @stdout, align 8
  %80 = icmp ne i32* %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @fclose(i32* %82)
  br label %84

84:                                               ; preds = %81, %77, %74
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %13
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @krb5_warnx(i32, i8*) #1

declare dso_local %struct.TYPE_6__* @_kadm5_s_get_db(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*, ...) #1

declare dso_local i32 @hdb_foreach(i32, %struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
