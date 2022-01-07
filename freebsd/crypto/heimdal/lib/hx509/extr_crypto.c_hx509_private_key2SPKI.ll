; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_hx509_private_key2SPKI.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_hx509_private_key2SPKI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.hx509_private_key_ops* }
%struct.hx509_private_key_ops = type { {}* }

@HX509_UNIMPLEMENTED_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Private key have no key2SPKI function\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_private_key2SPKI(i32 %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hx509_private_key_ops*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.hx509_private_key_ops*, %struct.hx509_private_key_ops** %10, align 8
  store %struct.hx509_private_key_ops* %11, %struct.hx509_private_key_ops** %8, align 8
  %12 = load %struct.hx509_private_key_ops*, %struct.hx509_private_key_ops** %8, align 8
  %13 = icmp eq %struct.hx509_private_key_ops* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.hx509_private_key_ops*, %struct.hx509_private_key_ops** %8, align 8
  %16 = getelementptr inbounds %struct.hx509_private_key_ops, %struct.hx509_private_key_ops* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (i32, %struct.TYPE_4__*, i32*)**
  %18 = load i32 (i32, %struct.TYPE_4__*, i32*)*, i32 (i32, %struct.TYPE_4__*, i32*)** %17, align 8
  %19 = icmp eq i32 (i32, %struct.TYPE_4__*, i32*)* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14, %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @HX509_UNIMPLEMENTED_OPERATION, align 4
  %23 = call i32 @hx509_set_error_string(i32 %21, i32 0, i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @HX509_UNIMPLEMENTED_OPERATION, align 4
  store i32 %24, i32* %4, align 4
  br label %34

25:                                               ; preds = %14
  %26 = load %struct.hx509_private_key_ops*, %struct.hx509_private_key_ops** %8, align 8
  %27 = getelementptr inbounds %struct.hx509_private_key_ops, %struct.hx509_private_key_ops* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (i32, %struct.TYPE_4__*, i32*)**
  %29 = load i32 (i32, %struct.TYPE_4__*, i32*)*, i32 (i32, %struct.TYPE_4__*, i32*)** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 %29(i32 %30, %struct.TYPE_4__* %31, i32* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %25, %20
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
