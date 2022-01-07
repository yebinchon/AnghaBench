; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_comp_parse.c_sanity_check2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_comp_parse.c_sanity_check2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@exit_attribute_mode = common dso_local global i32 0, align 4
@enter_standout_mode = common dso_local global i32 0, align 4
@exit_standout_mode = common dso_local global i32 0, align 4
@enter_underline_mode = common dso_local global i32 0, align 4
@exit_underline_mode = common dso_local global i32 0, align 4
@enter_italics_mode = common dso_local global i32 0, align 4
@exit_italics_mode = common dso_local global i32 0, align 4
@enter_alt_charset_mode = common dso_local global i32 0, align 4
@acs_chars = common dso_local global i32 0, align 4
@exit_alt_charset_mode = common dso_local global i32 0, align 4
@enter_blink_mode = common dso_local global i32 0, align 4
@enter_bold_mode = common dso_local global i32 0, align 4
@exit_ca_mode = common dso_local global i32 0, align 4
@enter_ca_mode = common dso_local global i32 0, align 4
@enter_delete_mode = common dso_local global i32 0, align 4
@exit_delete_mode = common dso_local global i32 0, align 4
@enter_dim_mode = common dso_local global i32 0, align 4
@enter_insert_mode = common dso_local global i32 0, align 4
@exit_insert_mode = common dso_local global i32 0, align 4
@enter_secure_mode = common dso_local global i32 0, align 4
@enter_protected_mode = common dso_local global i32 0, align 4
@enter_reverse_mode = common dso_local global i32 0, align 4
@from_status_line = common dso_local global i32 0, align 4
@to_status_line = common dso_local global i32 0, align 4
@meta_off = common dso_local global i32 0, align 4
@meta_on = common dso_local global i32 0, align 4
@prtr_on = common dso_local global i32 0, align 4
@prtr_off = common dso_local global i32 0, align 4
@save_cursor = common dso_local global i32 0, align 4
@restore_cursor = common dso_local global i32 0, align 4
@enter_xon_mode = common dso_local global i32 0, align 4
@exit_xon_mode = common dso_local global i32 0, align 4
@enter_am_mode = common dso_local global i32 0, align 4
@exit_am_mode = common dso_local global i32 0, align 4
@label_off = common dso_local global i32 0, align 4
@label_on = common dso_local global i32 0, align 4
@set_color_pair = common dso_local global i32 0, align 4
@initialize_pair = common dso_local global i32 0, align 4
@display_clock = common dso_local global i32 0, align 4
@remove_clock = common dso_local global i32 0, align 4
@set_attributes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @sanity_check2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sanity_check2(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @exit_attribute_mode, align 4
  %6 = call i64 @PRESENT(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @enter_standout_mode, align 4
  %10 = load i32, i32* @exit_standout_mode, align 4
  %11 = call i32 @PAIRED(i32 %9, i32 %10)
  %12 = load i32, i32* @enter_underline_mode, align 4
  %13 = load i32, i32* @exit_underline_mode, align 4
  %14 = call i32 @PAIRED(i32 %12, i32 %13)
  %15 = load i32, i32* @enter_italics_mode, align 4
  %16 = load i32, i32* @exit_italics_mode, align 4
  %17 = call i32 @PAIRED(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %8, %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @fixup_acsc(%struct.TYPE_4__* %22, i32 %23)
  %25 = load i32, i32* @enter_alt_charset_mode, align 4
  %26 = load i32, i32* @acs_chars, align 4
  %27 = call i32 @ANDMISSING(i32 %25, i32 %26)
  %28 = load i32, i32* @exit_alt_charset_mode, align 4
  %29 = load i32, i32* @acs_chars, align 4
  %30 = call i32 @ANDMISSING(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %21, %18
  %32 = load i32, i32* @enter_alt_charset_mode, align 4
  %33 = load i32, i32* @exit_alt_charset_mode, align 4
  %34 = call i32 @PAIRED(i32 %32, i32 %33)
  %35 = load i32, i32* @enter_blink_mode, align 4
  %36 = load i32, i32* @exit_attribute_mode, align 4
  %37 = call i32 @ANDMISSING(i32 %35, i32 %36)
  %38 = load i32, i32* @enter_bold_mode, align 4
  %39 = load i32, i32* @exit_attribute_mode, align 4
  %40 = call i32 @ANDMISSING(i32 %38, i32 %39)
  %41 = load i32, i32* @exit_ca_mode, align 4
  %42 = load i32, i32* @enter_ca_mode, align 4
  %43 = call i32 @PAIRED(i32 %41, i32 %42)
  %44 = load i32, i32* @enter_delete_mode, align 4
  %45 = load i32, i32* @exit_delete_mode, align 4
  %46 = call i32 @PAIRED(i32 %44, i32 %45)
  %47 = load i32, i32* @enter_dim_mode, align 4
  %48 = load i32, i32* @exit_attribute_mode, align 4
  %49 = call i32 @ANDMISSING(i32 %47, i32 %48)
  %50 = load i32, i32* @enter_insert_mode, align 4
  %51 = load i32, i32* @exit_insert_mode, align 4
  %52 = call i32 @PAIRED(i32 %50, i32 %51)
  %53 = load i32, i32* @enter_secure_mode, align 4
  %54 = load i32, i32* @exit_attribute_mode, align 4
  %55 = call i32 @ANDMISSING(i32 %53, i32 %54)
  %56 = load i32, i32* @enter_protected_mode, align 4
  %57 = load i32, i32* @exit_attribute_mode, align 4
  %58 = call i32 @ANDMISSING(i32 %56, i32 %57)
  %59 = load i32, i32* @enter_reverse_mode, align 4
  %60 = load i32, i32* @exit_attribute_mode, align 4
  %61 = call i32 @ANDMISSING(i32 %59, i32 %60)
  %62 = load i32, i32* @from_status_line, align 4
  %63 = load i32, i32* @to_status_line, align 4
  %64 = call i32 @PAIRED(i32 %62, i32 %63)
  %65 = load i32, i32* @meta_off, align 4
  %66 = load i32, i32* @meta_on, align 4
  %67 = call i32 @PAIRED(i32 %65, i32 %66)
  %68 = load i32, i32* @prtr_on, align 4
  %69 = load i32, i32* @prtr_off, align 4
  %70 = call i32 @PAIRED(i32 %68, i32 %69)
  %71 = load i32, i32* @save_cursor, align 4
  %72 = load i32, i32* @restore_cursor, align 4
  %73 = call i32 @PAIRED(i32 %71, i32 %72)
  %74 = load i32, i32* @enter_xon_mode, align 4
  %75 = load i32, i32* @exit_xon_mode, align 4
  %76 = call i32 @PAIRED(i32 %74, i32 %75)
  %77 = load i32, i32* @enter_am_mode, align 4
  %78 = load i32, i32* @exit_am_mode, align 4
  %79 = call i32 @PAIRED(i32 %77, i32 %78)
  %80 = load i32, i32* @label_off, align 4
  %81 = load i32, i32* @label_on, align 4
  %82 = call i32 @ANDMISSING(i32 %80, i32 %81)
  %83 = load i32, i32* @set_color_pair, align 4
  %84 = load i32, i32* @initialize_pair, align 4
  %85 = call i32 @ANDMISSING(i32 %83, i32 %84)
  ret void
}

declare dso_local i64 @PRESENT(i32) #1

declare dso_local i32 @PAIRED(i32, i32) #1

declare dso_local i32 @fixup_acsc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ANDMISSING(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
