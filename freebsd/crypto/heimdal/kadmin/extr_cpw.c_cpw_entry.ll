; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_cpw.c_cpw_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_cpw.c_cpw_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd_options = type { i8*, i64, i64, i64 }
%struct.cpw_entry_data = type { i32*, i64, i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"give only one of --random-key, --random-password, --password, --key\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed parsing key \22%s\22: %s\0A\00", align 1
@do_cpw_entry = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"cpw\00", align 1
@kadm_handle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpw_entry(%struct.passwd_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.passwd_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpw_entry_data, align 8
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.passwd_options* %0, %struct.passwd_options** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.passwd_options*, %struct.passwd_options** %5, align 8
  %16 = getelementptr inbounds %struct.passwd_options, %struct.passwd_options* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.cpw_entry_data, %struct.cpw_entry_data* %10, i32 0, i32 3
  store i64 %17, i64* %18, align 8
  %19 = load %struct.passwd_options*, %struct.passwd_options** %5, align 8
  %20 = getelementptr inbounds %struct.passwd_options, %struct.passwd_options* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.cpw_entry_data, %struct.cpw_entry_data* %10, i32 0, i32 2
  store i64 %21, i64* %22, align 8
  %23 = load %struct.passwd_options*, %struct.passwd_options** %5, align 8
  %24 = getelementptr inbounds %struct.passwd_options, %struct.passwd_options* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.cpw_entry_data, %struct.cpw_entry_data* %10, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.cpw_entry_data, %struct.cpw_entry_data* %10, i32 0, i32 0
  store i32* null, i32** %27, align 8
  store i32 0, i32* %11, align 4
  %28 = getelementptr inbounds %struct.cpw_entry_data, %struct.cpw_entry_data* %10, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %31, %3
  %35 = getelementptr inbounds %struct.cpw_entry_data, %struct.cpw_entry_data* %10, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = getelementptr inbounds %struct.cpw_entry_data, %struct.cpw_entry_data* %10, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.passwd_options*, %struct.passwd_options** %5, align 8
  %50 = getelementptr inbounds %struct.passwd_options, %struct.passwd_options* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %11, align 4
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %112

62:                                               ; preds = %56
  %63 = load %struct.passwd_options*, %struct.passwd_options** %5, align 8
  %64 = getelementptr inbounds %struct.passwd_options, %struct.passwd_options* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %62
  %68 = load %struct.passwd_options*, %struct.passwd_options** %5, align 8
  %69 = getelementptr inbounds %struct.passwd_options, %struct.passwd_options* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %72 = call i64 @parse_des_key(i8* %70, i32* %71, i8** %13)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load i32, i32* @stderr, align 4
  %76 = load %struct.passwd_options*, %struct.passwd_options** %5, align 8
  %77 = getelementptr inbounds %struct.passwd_options, %struct.passwd_options* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %78, i8* %79)
  store i32 1, i32* %4, align 4
  br label %112

81:                                               ; preds = %67
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %83 = getelementptr inbounds %struct.cpw_entry_data, %struct.cpw_entry_data* %10, i32 0, i32 0
  store i32* %82, i32** %83, align 8
  br label %84

84:                                               ; preds = %81, %62
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %97, %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load i8**, i8*** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* @do_cpw_entry, align 4
  %96 = call i64 @foreach_principal(i8* %94, i32 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.cpw_entry_data* %10)
  store i64 %96, i64* %8, align 8
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %85

100:                                              ; preds = %85
  %101 = getelementptr inbounds %struct.cpw_entry_data, %struct.cpw_entry_data* %10, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* @kadm_handle, align 4
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %107 = call i32 @kadm5_free_key_data(i32 %105, i32* %14, i32* %106)
  br label %108

108:                                              ; preds = %104, %100
  %109 = load i64, i64* %8, align 8
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %108, %74, %59
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @parse_des_key(i8*, i32*, i8**) #1

declare dso_local i64 @foreach_principal(i8*, i32, i8*, %struct.cpw_entry_data*) #1

declare dso_local i32 @kadm5_free_key_data(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
