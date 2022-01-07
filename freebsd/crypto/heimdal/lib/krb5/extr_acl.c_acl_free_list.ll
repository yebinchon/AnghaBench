; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_acl.c_acl_free_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_acl.c_acl_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_field = type { %struct.acl_field* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acl_field*, i32)* @acl_free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acl_free_list(%struct.acl_field* %0, i32 %1) #0 {
  %3 = alloca %struct.acl_field*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acl_field*, align 8
  store %struct.acl_field* %0, %struct.acl_field** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.acl_field*, %struct.acl_field** %3, align 8
  %10 = call i32 @free_retv(%struct.acl_field* %9)
  br label %11

11:                                               ; preds = %8, %2
  br label %12

12:                                               ; preds = %15, %11
  %13 = load %struct.acl_field*, %struct.acl_field** %3, align 8
  %14 = icmp ne %struct.acl_field* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.acl_field*, %struct.acl_field** %3, align 8
  %17 = getelementptr inbounds %struct.acl_field, %struct.acl_field* %16, i32 0, i32 0
  %18 = load %struct.acl_field*, %struct.acl_field** %17, align 8
  store %struct.acl_field* %18, %struct.acl_field** %5, align 8
  %19 = load %struct.acl_field*, %struct.acl_field** %3, align 8
  %20 = call i32 @free(%struct.acl_field* %19)
  %21 = load %struct.acl_field*, %struct.acl_field** %5, align 8
  store %struct.acl_field* %21, %struct.acl_field** %3, align 8
  br label %12

22:                                               ; preds = %12
  ret void
}

declare dso_local i32 @free_retv(%struct.acl_field*) #1

declare dso_local i32 @free(%struct.acl_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
