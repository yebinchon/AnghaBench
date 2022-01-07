; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_cli.c_cli_txt_list_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_cli.c_cli_txt_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dl_list = type { i32 }
%struct.cli_txt_entry = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cli_txt_list_add(%struct.dl_list* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dl_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cli_txt_entry*, align 8
  store %struct.dl_list* %0, %struct.dl_list** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.dl_list*, %struct.dl_list** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.cli_txt_entry* @cli_txt_list_get(%struct.dl_list* %7, i8* %8)
  store %struct.cli_txt_entry* %9, %struct.cli_txt_entry** %6, align 8
  %10 = load %struct.cli_txt_entry*, %struct.cli_txt_entry** %6, align 8
  %11 = icmp ne %struct.cli_txt_entry* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = call %struct.cli_txt_entry* @os_zalloc(i32 16)
  store %struct.cli_txt_entry* %14, %struct.cli_txt_entry** %6, align 8
  %15 = load %struct.cli_txt_entry*, %struct.cli_txt_entry** %6, align 8
  %16 = icmp eq %struct.cli_txt_entry* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %35

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = call i32* @os_strdup(i8* %19)
  %21 = load %struct.cli_txt_entry*, %struct.cli_txt_entry** %6, align 8
  %22 = getelementptr inbounds %struct.cli_txt_entry, %struct.cli_txt_entry* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.cli_txt_entry*, %struct.cli_txt_entry** %6, align 8
  %24 = getelementptr inbounds %struct.cli_txt_entry, %struct.cli_txt_entry* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.cli_txt_entry*, %struct.cli_txt_entry** %6, align 8
  %29 = call i32 @os_free(%struct.cli_txt_entry* %28)
  store i32 -1, i32* %3, align 4
  br label %35

30:                                               ; preds = %18
  %31 = load %struct.dl_list*, %struct.dl_list** %4, align 8
  %32 = load %struct.cli_txt_entry*, %struct.cli_txt_entry** %6, align 8
  %33 = getelementptr inbounds %struct.cli_txt_entry, %struct.cli_txt_entry* %32, i32 0, i32 0
  %34 = call i32 @dl_list_add(%struct.dl_list* %31, i32* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %27, %17, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.cli_txt_entry* @cli_txt_list_get(%struct.dl_list*, i8*) #1

declare dso_local %struct.cli_txt_entry* @os_zalloc(i32) #1

declare dso_local i32* @os_strdup(i8*) #1

declare dso_local i32 @os_free(%struct.cli_txt_entry*) #1

declare dso_local i32 @dl_list_add(%struct.dl_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
