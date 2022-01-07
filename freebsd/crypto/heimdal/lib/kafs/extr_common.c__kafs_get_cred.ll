; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_common.c__kafs_get_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_common.c__kafs_get_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kafs_data = type { i32 }
%struct.kafs_token = type { i32 }

@AUTH_SUPERUSER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_kafs_get_cred(%struct.kafs_data* %0, i8* %1, i8* %2, i8* %3, i32 %4, %struct.kafs_token* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kafs_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.kafs_token*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [64 x i8], align 16
  store %struct.kafs_data* %0, %struct.kafs_data** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.kafs_token* %5, %struct.kafs_token** %13, align 8
  store i32 -1, i32* %14, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %6
  %20 = load %struct.kafs_data*, %struct.kafs_data** %8, align 8
  %21 = load i32, i32* @AUTH_SUPERUSER, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.kafs_token*, %struct.kafs_token** %13, align 8
  %26 = call i32 @_kafs_try_get_cred(%struct.kafs_data* %20, i32 %21, i8* %22, i8* %23, i32 %24, %struct.kafs_token* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %133

30:                                               ; preds = %19
  %31 = load %struct.kafs_data*, %struct.kafs_data** %8, align 8
  %32 = load i32, i32* @AUTH_SUPERUSER, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.kafs_token*, %struct.kafs_token** %13, align 8
  %36 = call i32 @_kafs_try_get_cred(%struct.kafs_data* %31, i32 %32, i8* null, i8* %33, i32 %34, %struct.kafs_token* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %133

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %6
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @_kafs_foldup(i8* %42, i8* %43)
  %45 = load %struct.kafs_data*, %struct.kafs_data** %8, align 8
  %46 = load i32, i32* @AUTH_SUPERUSER, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.kafs_token*, %struct.kafs_token** %13, align 8
  %51 = call i32 @_kafs_try_get_cred(%struct.kafs_data* %45, i32 %46, i8* %47, i8* %48, i32 %49, %struct.kafs_token* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %133

55:                                               ; preds = %41
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %57 = load i8*, i8** %11, align 8
  %58 = call i64 @strcmp(i8* %56, i8* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.kafs_data*, %struct.kafs_data** %8, align 8
  %62 = load i32, i32* @AUTH_SUPERUSER, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.kafs_token*, %struct.kafs_token** %13, align 8
  %66 = call i32 @_kafs_try_get_cred(%struct.kafs_data* %61, i32 %62, i8* null, i8* %63, i32 %64, %struct.kafs_token* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  br label %133

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %55
  %72 = load %struct.kafs_data*, %struct.kafs_data** %8, align 8
  %73 = load i32, i32* @AUTH_SUPERUSER, align 4
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.kafs_token*, %struct.kafs_token** %13, align 8
  %77 = call i32 @_kafs_try_get_cred(%struct.kafs_data* %72, i32 %73, i8* null, i8* %74, i32 %75, %struct.kafs_token* %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %133

81:                                               ; preds = %71
  %82 = load %struct.kafs_data*, %struct.kafs_data** %8, align 8
  %83 = load i32, i32* @AUTH_SUPERUSER, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.kafs_token*, %struct.kafs_token** %13, align 8
  %88 = call i32 @_kafs_try_get_cred(%struct.kafs_data* %82, i32 %83, i8* %84, i8* %85, i32 %86, %struct.kafs_token* %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %133

92:                                               ; preds = %81
  %93 = load %struct.kafs_data*, %struct.kafs_data** %8, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = call i64 @_kafs_realm_of_cell(%struct.kafs_data* %93, i8* %94, i8** %15)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %131

97:                                               ; preds = %92
  %98 = load i8*, i8** %15, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = call i64 @strcmp(i8* %98, i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %97
  %103 = load i8*, i8** %15, align 8
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %105 = call i64 @strcmp(i8* %103, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %102
  %108 = load %struct.kafs_data*, %struct.kafs_data** %8, align 8
  %109 = load i32, i32* @AUTH_SUPERUSER, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %15, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.kafs_token*, %struct.kafs_token** %13, align 8
  %114 = call i32 @_kafs_try_get_cred(%struct.kafs_data* %108, i32 %109, i8* %110, i8* %111, i32 %112, %struct.kafs_token* %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %107
  %118 = load %struct.kafs_data*, %struct.kafs_data** %8, align 8
  %119 = load i32, i32* @AUTH_SUPERUSER, align 4
  %120 = load i8*, i8** %15, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.kafs_token*, %struct.kafs_token** %13, align 8
  %123 = call i32 @_kafs_try_get_cred(%struct.kafs_data* %118, i32 %119, i8* null, i8* %120, i32 %121, %struct.kafs_token* %122)
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %117, %107
  %125 = load i8*, i8** %15, align 8
  %126 = call i32 @free(i8* %125)
  %127 = load i32, i32* %14, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 0, i32* %7, align 4
  br label %133

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %102, %97, %92
  %132 = load i32, i32* %14, align 4
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %131, %129, %91, %80, %69, %54, %39, %29
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i32 @_kafs_try_get_cred(%struct.kafs_data*, i32, i8*, i8*, i32, %struct.kafs_token*) #1

declare dso_local i32 @_kafs_foldup(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @_kafs_realm_of_cell(%struct.kafs_data*, i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
