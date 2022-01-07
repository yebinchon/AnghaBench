; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_validate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_validate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_cmd_entry = type { i32, i32*, i32* }
%struct.ctl_scsiio = type { i32* }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Not defined length for command 0x%02x/0x%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ctl_cmd_entry* @ctl_validate_command(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca %struct.ctl_cmd_entry*, align 8
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_cmd_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %8 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %9 = call %struct.ctl_cmd_entry* @ctl_get_cmd_entry(%struct.ctl_scsiio* %8, i32* %6)
  store %struct.ctl_cmd_entry* %9, %struct.ctl_cmd_entry** %4, align 8
  %10 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %4, align 8
  %11 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %19 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %18, i32 1, i32 1, i32 1, i32 1, i32 4)
  br label %23

20:                                               ; preds = %14
  %21 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %22 = call i32 @ctl_set_invalid_opcode(%struct.ctl_scsiio* %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %25 = bitcast %struct.ctl_scsiio* %24 to %union.ctl_io*
  %26 = call i32 @ctl_done(%union.ctl_io* %25)
  store %struct.ctl_cmd_entry* null, %struct.ctl_cmd_entry** %2, align 8
  br label %88

27:                                               ; preds = %1
  %28 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %4, align 8
  %29 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %34 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %39 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @KASSERT(i32 %32, i8* %44)
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %83, %27
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %4, align 8
  %49 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %86

52:                                               ; preds = %46
  %53 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %54 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %4, align 8
  %61 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %59, %68
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %52
  br label %83

73:                                               ; preds = %52
  %74 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @fls(i32 %76)
  %78 = sub nsw i32 %77, 1
  %79 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %74, i32 1, i32 1, i32 %75, i32 1, i32 %78)
  %80 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %81 = bitcast %struct.ctl_scsiio* %80 to %union.ctl_io*
  %82 = call i32 @ctl_done(%union.ctl_io* %81)
  store %struct.ctl_cmd_entry* null, %struct.ctl_cmd_entry** %2, align 8
  br label %88

83:                                               ; preds = %72
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %46

86:                                               ; preds = %46
  %87 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %4, align 8
  store %struct.ctl_cmd_entry* %87, %struct.ctl_cmd_entry** %2, align 8
  br label %88

88:                                               ; preds = %86, %73, %23
  %89 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %2, align 8
  ret %struct.ctl_cmd_entry* %89
}

declare dso_local %struct.ctl_cmd_entry* @ctl_get_cmd_entry(%struct.ctl_scsiio*, i32*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_set_invalid_opcode(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
