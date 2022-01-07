; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_acl.c_free_retv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_acl.c_free_retv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_field = type { i64, %struct.acl_field*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32** }

@acl_retval = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acl_field*)* @free_retv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_retv(%struct.acl_field* %0) #0 {
  %2 = alloca %struct.acl_field*, align 8
  store %struct.acl_field* %0, %struct.acl_field** %2, align 8
  br label %3

3:                                                ; preds = %31, %1
  %4 = load %struct.acl_field*, %struct.acl_field** %2, align 8
  %5 = icmp ne %struct.acl_field* %4, null
  br i1 %5, label %6, label %35

6:                                                ; preds = %3
  %7 = load %struct.acl_field*, %struct.acl_field** %2, align 8
  %8 = getelementptr inbounds %struct.acl_field, %struct.acl_field* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @acl_retval, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = load %struct.acl_field*, %struct.acl_field** %2, align 8
  %14 = getelementptr inbounds %struct.acl_field, %struct.acl_field* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.acl_field*, %struct.acl_field** %2, align 8
  %21 = getelementptr inbounds %struct.acl_field, %struct.acl_field* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @free(i32* %24)
  br label %26

26:                                               ; preds = %19, %12
  %27 = load %struct.acl_field*, %struct.acl_field** %2, align 8
  %28 = getelementptr inbounds %struct.acl_field, %struct.acl_field* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %26, %6
  %32 = load %struct.acl_field*, %struct.acl_field** %2, align 8
  %33 = getelementptr inbounds %struct.acl_field, %struct.acl_field* %32, i32 0, i32 1
  %34 = load %struct.acl_field*, %struct.acl_field** %33, align 8
  store %struct.acl_field* %34, %struct.acl_field** %2, align 8
  br label %3

35:                                               ; preds = %3
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
