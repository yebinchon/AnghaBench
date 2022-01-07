; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_import_name.c_import_krb5_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_import_name.c_import_krb5_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*, i32*)* @import_krb5_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @import_krb5_name(i32* %0, i32 %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i8* @malloc(i32 %15)
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %22, i32* %5, align 4
  br label %46

23:                                               ; preds = %4
  %24 = load i8*, i8** %11, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i8* %24, i32 %27, i32 %30)
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @parse_krb5_name(i32* %38, i32 %39, i8* %40, i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %23, %19
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @parse_krb5_name(i32*, i32, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
