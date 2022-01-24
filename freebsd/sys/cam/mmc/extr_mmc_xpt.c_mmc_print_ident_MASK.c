#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mmc_params {int card_rca; int card_features; int card_ocr; int io_ocr; int sdio_func_count; } ;

/* Variables and functions */
 int CARD_FEATURE_MEMORY ; 
 int CARD_FEATURE_MMC ; 
 int CARD_FEATURE_SD20 ; 
 int CARD_FEATURE_SDHC ; 
 int CARD_FEATURE_SDIO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(struct mmc_params *ident_data)
{
        FUNC0("Relative addr: %08x\n", ident_data->card_rca);
        FUNC0("Card features: <");
        if (ident_data->card_features & CARD_FEATURE_MMC)
                FUNC0("MMC ");
        if (ident_data->card_features & CARD_FEATURE_MEMORY)
                FUNC0("Memory ");
        if (ident_data->card_features & CARD_FEATURE_SDHC)
                FUNC0("High-Capacity ");
        if (ident_data->card_features & CARD_FEATURE_SD20)
                FUNC0("SD2.0-Conditions ");
        if (ident_data->card_features & CARD_FEATURE_SDIO)
                FUNC0("SDIO ");
        FUNC0(">\n");

        if (ident_data->card_features & CARD_FEATURE_MEMORY)
                FUNC0("Card memory OCR: %08x\n", ident_data->card_ocr);

        if (ident_data->card_features & CARD_FEATURE_SDIO) {
                FUNC0("Card IO OCR: %08x\n", ident_data->io_ocr);
                FUNC0("Number of funcitions: %u\n", ident_data->sdio_func_count);
        }
}