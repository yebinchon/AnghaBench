; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_cmp_authenticator.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_cmp_authenticator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@authenticator_vno = common dso_local global i32 0, align 4
@crealm = common dso_local global i32 0, align 4
@cname = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_authenticator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_authenticator(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %6, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = load i32, i32* @authenticator_vno, align 4
  %15 = call i32 @COMPARE_INTEGER(%struct.TYPE_13__* %12, %struct.TYPE_13__* %13, i32 %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = load i32, i32* @crealm, align 4
  %19 = call i32 @COMPARE_STRING(%struct.TYPE_13__* %16, %struct.TYPE_13__* %17, i32 %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cname, i32 0, i32 1), align 8
  %23 = call i32 @COMPARE_INTEGER(%struct.TYPE_13__* %20, %struct.TYPE_13__* %21, i32 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cname, i32 0, i32 0, i32 1), align 8
  %27 = call i32 @COMPARE_INTEGER(%struct.TYPE_13__* %24, %struct.TYPE_13__* %25, i32 %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %45, %2
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cname, i32 0, i32 0, i32 0), align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @COMPARE_STRING(%struct.TYPE_13__* %37, %struct.TYPE_13__* %38, i32 %43)
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %28

48:                                               ; preds = %28
  ret i32 0
}

declare dso_local i32 @COMPARE_INTEGER(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @COMPARE_STRING(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
