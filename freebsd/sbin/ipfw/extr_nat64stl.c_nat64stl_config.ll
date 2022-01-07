; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64stl.c_nat64stl_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64stl.c_nat64stl_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"config options required\00", align 1
@IP_FW_NAT64STL_CONFIG = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to get config for instance %s\00", align 1
@nat64newcmds = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@NAT64_LOG = common dso_local global i32 0, align 4
@NAT64_ALLOW_PRIVATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Can't change %s option\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"nat64stl instance configuration failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8**)* @nat64stl_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64stl_config(i8* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca [20 x i8], align 16
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EX_USAGE, align 4
  %19 = call i32 (i32, i8*, ...) @errx(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %4
  %21 = bitcast [20 x i8]* %9 to i8**
  %22 = call i32 @memset(i8** %21, i32 0, i32 20)
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %24 = bitcast i8* %23 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %11, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 1
  %27 = bitcast %struct.TYPE_3__* %26 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %10, align 8
  store i64 20, i64* %13, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @nat64stl_fill_ntlv(i32* %29, i8* %30, i32 %31)
  %33 = load i32, i32* @IP_FW_NAT64STL_CONFIG, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i64 @do_get3(i32 %33, i32* %35, i64* %13)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %20
  %39 = load i32, i32* @EX_OSERR, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 (i32, i8*, ...) @err(i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38, %20
  br label %43

43:                                               ; preds = %88, %42
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %89

46:                                               ; preds = %43
  %47 = load i32, i32* @nat64newcmds, align 4
  %48 = load i8**, i8*** %8, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @get_token(i32 %47, i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %50, i32* %14, align 4
  %51 = load i8**, i8*** %8, align 8
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %12, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %7, align 4
  %55 = load i8**, i8*** %8, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %8, align 8
  %57 = load i32, i32* %14, align 4
  switch i32 %57, label %84 [
    i32 133, label %58
    i32 132, label %64
    i32 131, label %71
    i32 130, label %77
  ]

58:                                               ; preds = %46
  %59 = load i32, i32* @NAT64_LOG, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %88

64:                                               ; preds = %46
  %65 = load i32, i32* @NAT64_LOG, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %88

71:                                               ; preds = %46
  %72 = load i32, i32* @NAT64_ALLOW_PRIVATE, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %88

77:                                               ; preds = %46
  %78 = load i32, i32* @NAT64_ALLOW_PRIVATE, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %88

84:                                               ; preds = %46
  %85 = load i32, i32* @EX_USAGE, align 4
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 (i32, i8*, ...) @errx(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %84, %77, %71, %64, %58
  br label %43

89:                                               ; preds = %43
  %90 = load i32, i32* @IP_FW_NAT64STL_CONFIG, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = call i64 @do_set3(i32 %90, i32* %92, i32 20)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @EX_OSERR, align 4
  %97 = call i32 (i32, i8*, ...) @err(i32 %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %89
  ret void
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @nat64stl_fill_ntlv(i32*, i8*, i32) #1

declare dso_local i64 @do_get3(i32, i32*, i64*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @get_token(i32, i8*, i8*) #1

declare dso_local i64 @do_set3(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
