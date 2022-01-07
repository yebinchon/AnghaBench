; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_util.c_set_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_util.c_set_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@KADM5_MAX_LIFE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unable to parse `%s'\00", align 1
@KADM5_MAX_RLIFE = common dso_local global i32 0, align 4
@KADM5_PRINC_EXPIRE_TIME = common dso_local global i32 0, align 4
@KADM5_PW_EXPIRATION = common dso_local global i32 0, align 4
@KADM5_ATTRIBUTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_entry(i32 %0, %struct.TYPE_3__* %1, i32* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %8
  %21 = load i8*, i8** %13, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* @KADM5_MAX_LIFE, align 4
  %26 = call i64 @parse_deltat(i8* %21, i32* %23, i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @krb5_warnx(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 1, i32* %9, align 4
  br label %98

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %8
  %34 = load i8*, i8** %14, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i8*, i8** %14, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* @KADM5_MAX_RLIFE, align 4
  %42 = call i64 @parse_deltat(i8* %37, i32* %39, i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @krb5_warnx(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %46)
  store i32 1, i32* %9, align 4
  br label %98

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i8*, i8** %15, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load i8*, i8** %15, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* @KADM5_PRINC_EXPIRE_TIME, align 4
  %58 = call i64 @parse_timet(i8* %53, i32* %55, i32* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* %10, align 4
  %62 = load i8*, i8** %15, align 8
  %63 = call i32 @krb5_warnx(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %62)
  store i32 1, i32* %9, align 4
  br label %98

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %49
  %66 = load i8*, i8** %16, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i8*, i8** %16, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* @KADM5_PW_EXPIRATION, align 4
  %74 = call i64 @parse_timet(i8* %69, i32* %71, i32* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = load i8*, i8** %16, align 8
  %79 = call i32 @krb5_warnx(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %78)
  store i32 1, i32* %9, align 4
  br label %98

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %65
  %82 = load i8*, i8** %17, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i8*, i8** %17, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %90 = call i64 @parse_attributes(i8* %85, i32* %87, i32* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i32, i32* %10, align 4
  %94 = load i8*, i8** %17, align 8
  %95 = call i32 @krb5_warnx(i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %94)
  store i32 1, i32* %9, align 4
  br label %98

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %81
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %97, %92, %76, %60, %44, %28
  %99 = load i32, i32* %9, align 4
  ret i32 %99
}

declare dso_local i64 @parse_deltat(i8*, i32*, i32*, i32) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i8*) #1

declare dso_local i64 @parse_timet(i8*, i32*, i32*, i32) #1

declare dso_local i64 @parse_attributes(i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
