; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_log.c_kdc_openlog.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_log.c_kdc_openlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"kdc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"logging\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"0-1/FILE:%s/%s\00", align 1
@KDC_LOG_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdc_openlog(i32 %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  store i8** null, i8*** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @krb5_initlog(i32 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i8** @krb5_config_get_strings(i32 %14, i32* null, i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8** %16, i8*** %7, align 8
  %17 = load i8**, i8*** %7, align 8
  %18 = icmp eq i8** %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %4, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i8** @krb5_config_get_strings(i32 %20, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32* null)
  store i8** %22, i8*** %7, align 8
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i8**, i8*** %7, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i8**, i8*** %7, align 8
  store i8** %27, i8*** %8, align 8
  br label %28

28:                                               ; preds = %40, %26
  %29 = load i8**, i8*** %8, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8**, i8*** %8, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @krb5_addlog_dest(i32 %33, i32 %36, i8* %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i8**, i8*** %8, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %42, i8*** %8, align 8
  br label %28

43:                                               ; preds = %28
  %44 = load i8**, i8*** %7, align 8
  %45 = call i32 @krb5_config_free_strings(i8** %44)
  br label %63

46:                                               ; preds = %23
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @hdb_db_dir(i32 %47)
  %49 = load i32, i32* @KDC_LOG_FILE, align 4
  %50 = call i64 @asprintf(i8** %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 @err(i32 1, i32* null)
  br label %54

54:                                               ; preds = %52, %46
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @krb5_addlog_dest(i32 %55, i32 %58, i8* %59)
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @free(i8* %61)
  br label %63

63:                                               ; preds = %54, %43
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @krb5_set_warn_dest(i32 %64, i32 %67)
  ret void
}

declare dso_local i32 @krb5_initlog(i32, i8*, i32*) #1

declare dso_local i8** @krb5_config_get_strings(i32, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @krb5_addlog_dest(i32, i32, i8*) #1

declare dso_local i32 @krb5_config_free_strings(i8**) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i32) #1

declare dso_local i32 @hdb_db_dir(i32) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_set_warn_dest(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
