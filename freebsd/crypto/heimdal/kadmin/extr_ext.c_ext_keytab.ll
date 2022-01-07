; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_ext.c_ext_keytab.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_ext.c_ext_keytab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext_keytab_options = type { i32* }
%struct.ext_keytab_data = type { i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"krb5_kt_resolve\00", align 1
@do_ext_keytab = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ext\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext_keytab(%struct.ext_keytab_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext_keytab_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext_keytab_data, align 4
  store %struct.ext_keytab_options* %0, %struct.ext_keytab_options** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.ext_keytab_options*, %struct.ext_keytab_options** %5, align 8
  %12 = getelementptr inbounds %struct.ext_keytab_options, %struct.ext_keytab_options* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @context, align 4
  %17 = getelementptr inbounds %struct.ext_keytab_data, %struct.ext_keytab_data* %10, i32 0, i32 0
  %18 = call i64 @krb5_kt_default(i32 %16, i32* %17)
  store i64 %18, i64* %8, align 8
  br label %26

19:                                               ; preds = %3
  %20 = load i32, i32* @context, align 4
  %21 = load %struct.ext_keytab_options*, %struct.ext_keytab_options** %5, align 8
  %22 = getelementptr inbounds %struct.ext_keytab_options, %struct.ext_keytab_options* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds %struct.ext_keytab_data, %struct.ext_keytab_data* %10, i32 0, i32 0
  %25 = call i64 @krb5_kt_resolve(i32 %20, i32* %23, i32* %24)
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %19, %15
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @context, align 4
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @krb5_warn(i32 %30, i64 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %61

33:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i8**, i8*** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @do_ext_keytab, align 4
  %45 = call i64 @foreach_principal(i8* %43, i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.ext_keytab_data* %10)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %53

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %34

53:                                               ; preds = %48, %34
  %54 = load i32, i32* @context, align 4
  %55 = getelementptr inbounds %struct.ext_keytab_data, %struct.ext_keytab_data* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @krb5_kt_close(i32 %54, i32 %56)
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %53, %29
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @krb5_kt_default(i32, i32*) #1

declare dso_local i64 @krb5_kt_resolve(i32, i32*, i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i64 @foreach_principal(i8*, i32, i8*, %struct.ext_keytab_data*) #1

declare dso_local i32 @krb5_kt_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
