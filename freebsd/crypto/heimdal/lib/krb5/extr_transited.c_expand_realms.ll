; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_transited.c_expand_realms.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_transited.c_expand_realms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_realm = type { i8*, i32, i64, i64, %struct.tr_realm* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tr_realm*, i8*)* @expand_realms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_realms(i32 %0, %struct.tr_realm* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tr_realm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tr_realm*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.tr_realm* %1, %struct.tr_realm** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %9, align 8
  %14 = load %struct.tr_realm*, %struct.tr_realm** %6, align 8
  store %struct.tr_realm* %14, %struct.tr_realm** %8, align 8
  br label %15

15:                                               ; preds = %115, %3
  %16 = load %struct.tr_realm*, %struct.tr_realm** %8, align 8
  %17 = icmp ne %struct.tr_realm* %16, null
  br i1 %17, label %18, label %119

18:                                               ; preds = %15
  %19 = load %struct.tr_realm*, %struct.tr_realm** %8, align 8
  %20 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %18
  %24 = load i8*, i8** %9, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %9, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.tr_realm*, %struct.tr_realm** %8, align 8
  %30 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = add nsw i32 %32, %34
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %11, align 8
  %38 = load %struct.tr_realm*, %struct.tr_realm** %8, align 8
  %39 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i8* @realloc(i8* %40, i64 %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %28
  %46 = load %struct.tr_realm*, %struct.tr_realm** %6, align 8
  %47 = call i32 @free_realms(%struct.tr_realm* %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @krb5_enomem(i32 %48)
  store i32 %49, i32* %4, align 4
  br label %120

50:                                               ; preds = %28
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.tr_realm*, %struct.tr_realm** %8, align 8
  %53 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.tr_realm*, %struct.tr_realm** %8, align 8
  %55 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @strlcat(i8* %56, i8* %57, i64 %58)
  br label %111

60:                                               ; preds = %18
  %61 = load %struct.tr_realm*, %struct.tr_realm** %8, align 8
  %62 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %110

65:                                               ; preds = %60
  %66 = load %struct.tr_realm*, %struct.tr_realm** %8, align 8
  %67 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %110, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %110

73:                                               ; preds = %70
  %74 = load %struct.tr_realm*, %struct.tr_realm** %8, align 8
  %75 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = add nsw i32 %77, %79
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i8* @malloc(i64 %83)
  store i8* %84, i8** %12, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %73
  %88 = load %struct.tr_realm*, %struct.tr_realm** %6, align 8
  %89 = call i32 @free_realms(%struct.tr_realm* %88)
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @krb5_enomem(i32 %90)
  store i32 %91, i32* %4, align 4
  br label %120

92:                                               ; preds = %73
  %93 = load i8*, i8** %12, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @strlcpy(i8* %93, i8* %94, i64 %95)
  %97 = load i8*, i8** %12, align 8
  %98 = load %struct.tr_realm*, %struct.tr_realm** %8, align 8
  %99 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = call i32 @strlcat(i8* %97, i8* %100, i64 %101)
  %103 = load %struct.tr_realm*, %struct.tr_realm** %8, align 8
  %104 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i8*, i8** %12, align 8
  %108 = load %struct.tr_realm*, %struct.tr_realm** %8, align 8
  %109 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %92, %70, %65, %60
  br label %111

111:                                              ; preds = %110, %50
  %112 = load %struct.tr_realm*, %struct.tr_realm** %8, align 8
  %113 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %9, align 8
  br label %115

115:                                              ; preds = %111
  %116 = load %struct.tr_realm*, %struct.tr_realm** %8, align 8
  %117 = getelementptr inbounds %struct.tr_realm, %struct.tr_realm* %116, i32 0, i32 4
  %118 = load %struct.tr_realm*, %struct.tr_realm** %117, align 8
  store %struct.tr_realm* %118, %struct.tr_realm** %8, align 8
  br label %15

119:                                              ; preds = %15
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %87, %45
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free_realms(%struct.tr_realm*) #1

declare dso_local i32 @krb5_enomem(i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
