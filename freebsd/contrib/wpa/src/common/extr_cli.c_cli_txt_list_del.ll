; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_cli.c_cli_txt_list_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_cli.c_cli_txt_list_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dl_list = type { i32 }
%struct.cli_txt_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cli_txt_list_del(%struct.dl_list* %0, i8* %1) #0 {
  %3 = alloca %struct.dl_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cli_txt_entry*, align 8
  store %struct.dl_list* %0, %struct.dl_list** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.dl_list*, %struct.dl_list** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.cli_txt_entry* @cli_txt_list_get(%struct.dl_list* %6, i8* %7)
  store %struct.cli_txt_entry* %8, %struct.cli_txt_entry** %5, align 8
  %9 = load %struct.cli_txt_entry*, %struct.cli_txt_entry** %5, align 8
  %10 = icmp ne %struct.cli_txt_entry* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.cli_txt_entry*, %struct.cli_txt_entry** %5, align 8
  %13 = call i32 @cli_txt_list_free(%struct.cli_txt_entry* %12)
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.cli_txt_entry* @cli_txt_list_get(%struct.dl_list*, i8*) #1

declare dso_local i32 @cli_txt_list_free(%struct.cli_txt_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
