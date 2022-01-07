; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_ank.c_add_new_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_ank.c_add_new_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.add_options = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"give only one of --random-key, --random-password, --password, --key\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed parsing key \22%s\22: %s\0A\00", align 1
@context = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"adding %s\00", align 1
@kadm_handle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_new_key(%struct.add_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.add_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.add_options* %0, %struct.add_options** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i64 0, i64* %8, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.add_options*, %struct.add_options** %5, align 8
  %16 = getelementptr inbounds %struct.add_options, %struct.add_options* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.add_options*, %struct.add_options** %5, align 8
  %24 = getelementptr inbounds %struct.add_options, %struct.add_options* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.add_options*, %struct.add_options** %5, align 8
  %32 = getelementptr inbounds %struct.add_options, %struct.add_options* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.add_options*, %struct.add_options** %5, align 8
  %40 = getelementptr inbounds %struct.add_options, %struct.add_options* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %139

52:                                               ; preds = %46
  %53 = load %struct.add_options*, %struct.add_options** %5, align 8
  %54 = getelementptr inbounds %struct.add_options, %struct.add_options* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load %struct.add_options*, %struct.add_options** %5, align 8
  %59 = getelementptr inbounds %struct.add_options, %struct.add_options* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %62 = call i64 @parse_des_key(i8* %60, i32* %61, i8** %13)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load i32, i32* @stderr, align 4
  %66 = load %struct.add_options*, %struct.add_options** %5, align 8
  %67 = getelementptr inbounds %struct.add_options, %struct.add_options* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %68, i8* %69)
  store i32 1, i32* %4, align 4
  br label %139

71:                                               ; preds = %57
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32* %72, i32** %12, align 8
  br label %73

73:                                               ; preds = %71, %52
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %125, %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %128

78:                                               ; preds = %74
  %79 = load i8**, i8*** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.add_options*, %struct.add_options** %5, align 8
  %85 = getelementptr inbounds %struct.add_options, %struct.add_options* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.add_options*, %struct.add_options** %5, align 8
  %88 = getelementptr inbounds %struct.add_options, %struct.add_options* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.add_options*, %struct.add_options** %5, align 8
  %91 = getelementptr inbounds %struct.add_options, %struct.add_options* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.add_options*, %struct.add_options** %5, align 8
  %94 = getelementptr inbounds %struct.add_options, %struct.add_options* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load %struct.add_options*, %struct.add_options** %5, align 8
  %98 = getelementptr inbounds %struct.add_options, %struct.add_options* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.add_options*, %struct.add_options** %5, align 8
  %101 = getelementptr inbounds %struct.add_options, %struct.add_options* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.add_options*, %struct.add_options** %5, align 8
  %104 = getelementptr inbounds %struct.add_options, %struct.add_options* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.add_options*, %struct.add_options** %5, align 8
  %107 = getelementptr inbounds %struct.add_options, %struct.add_options* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.add_options*, %struct.add_options** %5, align 8
  %110 = getelementptr inbounds %struct.add_options, %struct.add_options* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @add_one_principal(i8* %83, i32 %86, i32 %89, i32 %92, i32 %95, i32* %96, i32 %99, i32 %102, i32 %105, i32 %108, i32 %111)
  store i64 %112, i64* %8, align 8
  %113 = load i64, i64* %8, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %78
  %116 = load i32, i32* @context, align 4
  %117 = load i64, i64* %8, align 8
  %118 = load i8**, i8*** %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @krb5_warn(i32 %116, i64 %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %122)
  br label %128

124:                                              ; preds = %78
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %74

128:                                              ; preds = %115, %74
  %129 = load i32*, i32** %12, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  store i32 3, i32* %14, align 4
  %132 = load i32, i32* @kadm_handle, align 4
  %133 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %134 = call i32 @kadm5_free_key_data(i32 %132, i32* %14, i32* %133)
  br label %135

135:                                              ; preds = %131, %128
  %136 = load i64, i64* %8, align 8
  %137 = icmp ne i64 %136, 0
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %135, %64, %49
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @parse_des_key(i8*, i32*, i8**) #1

declare dso_local i64 @add_one_principal(i8*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*, i8*) #1

declare dso_local i32 @kadm5_free_key_data(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
