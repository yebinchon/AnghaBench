; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_gssapi_client.c_do_trans.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_gssapi_client.c_do_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"hej\00", align 1
@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"gss_get_mic\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"hemligt\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"gss_wrap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @do_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_trans(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %10, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 3, i32* %12, align 8
  %13 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = call i32 @gss_get_mic(i32* %6, i32 %16, i32 %17, %struct.TYPE_8__* %18, %struct.TYPE_8__* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @GSS_ERROR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @gss_err(i32 1, i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = call i32 @write_token(i32 %28, %struct.TYPE_8__* %29)
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %33 = call i32 @write_token(i32 %31, %struct.TYPE_8__* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 7, i32* %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %42 = call i32 @gss_wrap(i32* %6, i32 %38, i32 0, i32 %39, %struct.TYPE_8__* %40, i32* null, %struct.TYPE_8__* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @GSS_ERROR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %27
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @gss_err(i32 1, i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %27
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %52 = call i32 @write_token(i32 %50, %struct.TYPE_8__* %51)
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = call i32 @gss_wrap(i32* %6, i32 %53, i32 1, i32 %54, %struct.TYPE_8__* %55, i32* null, %struct.TYPE_8__* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @GSS_ERROR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @gss_err(i32 1, i32 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %49
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %67 = call i32 @write_token(i32 %65, %struct.TYPE_8__* %66)
  ret i32 0
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @gss_get_mic(i32*, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i64 @GSS_ERROR(i32) #1

declare dso_local i32 @gss_err(i32, i32, i8*) #1

declare dso_local i32 @write_token(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @gss_wrap(i32*, i32, i32, i32, %struct.TYPE_8__*, i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
