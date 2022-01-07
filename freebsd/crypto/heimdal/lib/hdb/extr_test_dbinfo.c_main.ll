; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_test_dbinfo.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_test_dbinfo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdb_dbinfo = type { i32 }

@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"krb5_init_context failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"hdb_get_dbinfo\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"label: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"no label\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\09realm: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"no realm\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"\09dbname: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"no dbname\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"\09mkey_file: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"no mkey file\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"\09acl_file: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"no acl file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.hdb_dbinfo*, align 8
  %7 = alloca %struct.hdb_dbinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @setprogname(i8* %14)
  %16 = load i32, i32* @args, align 4
  %17 = load i32, i32* @num_args, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i64 @getarg(i32 %16, i32 %17, i32 %18, i8** %19, i32* %10)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @args, align 4
  %24 = load i32, i32* @num_args, align 4
  %25 = call i32 @krb5_std_usage(i32 1, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i64, i64* @help_flag, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @args, align 4
  %31 = load i32, i32* @num_args, align 4
  %32 = call i32 @krb5_std_usage(i32 0, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i64, i64* @version_flag, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = call i32 @print_version(i32* null)
  %38 = call i32 @exit(i32 0) #3
  unreachable

39:                                               ; preds = %33
  %40 = call i32 @krb5_init_context(i32* %8)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @hdb_get_dbinfo(i32 %47, %struct.hdb_dbinfo** %6)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @krb5_err(i32 %52, i32 1, i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %46
  store %struct.hdb_dbinfo* null, %struct.hdb_dbinfo** %7, align 8
  br label %56

56:                                               ; preds = %114, %55
  %57 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %6, align 8
  %58 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %7, align 8
  %59 = call %struct.hdb_dbinfo* @hdb_dbinfo_get_next(%struct.hdb_dbinfo* %57, %struct.hdb_dbinfo* %58)
  store %struct.hdb_dbinfo* %59, %struct.hdb_dbinfo** %7, align 8
  %60 = icmp ne %struct.hdb_dbinfo* %59, null
  br i1 %60, label %61, label %117

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %7, align 8
  %64 = call i8* @hdb_dbinfo_get_label(i32 %62, %struct.hdb_dbinfo* %63)
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i8*, i8** %11, align 8
  br label %70

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i8* [ %68, %67 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %69 ]
  %72 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %7, align 8
  %75 = call i8* @hdb_dbinfo_get_realm(i32 %73, %struct.hdb_dbinfo* %74)
  store i8* %75, i8** %11, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i8*, i8** %11, align 8
  br label %81

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i8* [ %79, %78 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %80 ]
  %83 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %7, align 8
  %86 = call i8* @hdb_dbinfo_get_dbname(i32 %84, %struct.hdb_dbinfo* %85)
  store i8* %86, i8** %11, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i8*, i8** %11, align 8
  br label %92

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i8* [ %90, %89 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), %91 ]
  %94 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %7, align 8
  %97 = call i8* @hdb_dbinfo_get_mkey_file(i32 %95, %struct.hdb_dbinfo* %96)
  store i8* %97, i8** %11, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i8*, i8** %11, align 8
  br label %103

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i8* [ %101, %100 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), %102 ]
  %105 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %104)
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.hdb_dbinfo*, %struct.hdb_dbinfo** %7, align 8
  %108 = call i8* @hdb_dbinfo_get_acl_file(i32 %106, %struct.hdb_dbinfo* %107)
  store i8* %108, i8** %11, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i8*, i8** %11, align 8
  br label %114

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %111
  %115 = phi i8* [ %112, %111 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), %113 ]
  %116 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %115)
  br label %56

117:                                              ; preds = %56
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @hdb_free_dbinfo(i32 %118, %struct.hdb_dbinfo** %6)
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @krb5_free_context(i32 %120)
  ret i32 0
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i64 @getarg(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @krb5_std_usage(i32, i32, i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @hdb_get_dbinfo(i32, %struct.hdb_dbinfo**) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*) #1

declare dso_local %struct.hdb_dbinfo* @hdb_dbinfo_get_next(%struct.hdb_dbinfo*, %struct.hdb_dbinfo*) #1

declare dso_local i8* @hdb_dbinfo_get_label(i32, %struct.hdb_dbinfo*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @hdb_dbinfo_get_realm(i32, %struct.hdb_dbinfo*) #1

declare dso_local i8* @hdb_dbinfo_get_dbname(i32, %struct.hdb_dbinfo*) #1

declare dso_local i8* @hdb_dbinfo_get_mkey_file(i32, %struct.hdb_dbinfo*) #1

declare dso_local i8* @hdb_dbinfo_get_acl_file(i32, %struct.hdb_dbinfo*) #1

declare dso_local i32 @hdb_free_dbinfo(i32, %struct.hdb_dbinfo**) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
