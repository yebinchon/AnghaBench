; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_read_bind_file_wild.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_read_bind_file_wild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_anchors = type { i32 }

@GLOB_ABORTED = common dso_local global i32 0, align 4
@GLOB_BRACE = common dso_local global i32 0, align 4
@GLOB_ERR = common dso_local global i32 0, align 4
@GLOB_NOMATCH = common dso_local global i32 0, align 4
@GLOB_NOSORT = common dso_local global i32 0, align 4
@GLOB_NOSPACE = common dso_local global i32 0, align 4
@GLOB_TILDE = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.val_anchors*, i32*, i8*)* @anchor_read_bind_file_wild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anchor_read_bind_file_wild(%struct.val_anchors* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.val_anchors*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @anchor_read_bind_file(%struct.val_anchors* %7, i32* %8, i8* %9)
  ret i32 %10
}

declare dso_local i32 @anchor_read_bind_file(%struct.val_anchors*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
